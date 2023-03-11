<?php 
class My_model extends CI_Model 
{
   /*  function getusers()
    {
        $query = $this->db->get('users');
        return $query->result_array();
    } */

    function getSearchUsers($perPage,$start_index,$search_text=null,$is_count=0)
    {
        if($perPage !='' && $start_index != '')
        {
            $this->db->limit($perPage,$start_index);
        }

        if($search_text!=NULL)
        {
            $this->db->like('name',$search_text,'both');
            $this->db->or_like('email',$search_text,'both');
            $this->db->or_like('phone',$search_text,'both');
            $this->db->or_like('gender',$search_text,'both');
        }

        if($is_count==1)
        {
            $query = $this->db->get('users');
            return $query->num_rows();
        }
        else 
        {
            $query = $this->db->get('users');
            return $query->result_array();
        }
    }
}