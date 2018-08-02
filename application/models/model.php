<?php
 defined('BASEPATH') OR exit('No direct script access allowed');
	class model extends CI_Model
	{
		public function ins_data($tbl,$data)
		{
			$sql=$this->db->insert($tbl,$data);
		}
		
		
		public function show_data()
		{
			$this->db->select('reg_id,emp_name,emp_type,designation,shift,gender,dob,natinality,mstatus,experience,mobile_no,phone_no,email,bl_group,caddress,professional,education');
			$this->db->from('register');
			$sql=$this->db->get();
			return $sql->result();
		}
		
		
		public function delete_record($tbl,$where)
		{
			$sql=$this->db->delete($tbl,$where);
		}
		
		
		public function ed_record($tbl,$where)
		{
			$sql=$this->db->get_where($tbl,$where);
			return $sql->result();
		}
		
		public function update_record($tbl,$data,$reg_id)
		{ 
			$sql=$this->db->update($tbl,$data,$reg_id);
		}




			
			
		



}	

?>


