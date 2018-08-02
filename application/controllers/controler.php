<?php
defined('BASEPATH') OR exit('No direct script access allowed');
	
	class controler extends CI_Controller
	{
		public function index()
		{
			$this->load->library('form_validation');
		//$this->load->library('email');
			$this->form_validation->set_rules('number','Number','required');
			$this->form_validation->set_rules('apply_on','Apply_ON','required');
			$this->form_validation->set_rules('form_no','Form Nomber','required|numeric');
			$this->form_validation->set_rules('emp_code','Employee Code','required');
			$this->form_validation->set_rules('punch_no','Punch Nomber','required|numeric');
			$this->form_validation->set_rules('joining_date','Joining Date','required');
			$this->form_validation->set_rules('emp_type','Employee Type','Required');
			$this->form_validation->set_rules('salary','Salary','Required','numeric');
			$this->form_validation->set_rules('salaryperday','SalaryPerDay','Required|numeric');
			$this->form_validation->set_rules('designation','Designation','required');
			$this->form_validation->set_rules('shift','Shift','required');
			$this->form_validation->set_rules('monthleave','MonthLeave','required|numeric');
			$this->form_validation->set_rules('emp_name','Employee Name','required|trim');
			$this->form_validation->set_rules('gender','Gender','Required');
			$this->form_validation->set_rules('dob','Date Of Birth','required');
			$this->form_validation->set_rules('natinality','Natinality','Required|max_length[30]');
			$this->form_validation->set_rules('religion','Religion','required|alpha');
			$this->form_validation->set_rules('cast','Cast','required|alpha');
			$this->form_validation->set_rules('sub_cast','Sub_Cast','Required');
			$this->form_validation->set_rules('mstatus','Married Status','required');
			$this->form_validation->set_rules('experience','Experience','required|numeric');
			$this->form_validation->set_rules('mobile_no','Mobile Nomber','required|numeric');
			$this->form_validation->set_rules('phone_no','Phone Nomber','Required|numeric');
			$this->form_validation->set_rules('email','Email ID','required');
			$this->form_validation->set_rules('bl_group','Blood Group','required');
			$this->form_validation->set_rules('reference','Reference','required');
			$this->form_validation->set_rules('caddress','Current Address','required');
			$this->form_validation->set_rules('haddress','Home Address','Required');
			$this->form_validation->set_rules('spe_subject','Special Subjec','required');
			$this->form_validation->set_rules('professional','Professional','Required');
			$this->form_validation->set_rules('education','Education','Required|alpha');
			
			
			$this->form_validation->set_error_delimiters("<div class='text-danger'>","</div>");
			
			if($this->form_validation->run()==True)
			{
			
			$this->load->model('model');
			$this->load->view('registarion.php');
			
			if($this->input->post('save'))
			{
				$number=$this->input->post('number');
				$date1=$this->input->post('apply_on');
				$form_no=$this->input->post('form_no');
				
				$emp_code=$this->input->post('emp_code');
				$punch_no=$this->input->post('punch_no');
				$joiningon=$this->input->post('joining_date');
				$emp_type=$this->input->post('emp_type');
				$salary=$this->input->post('salary');
				$salaryperday=$this->input->post('salaryperday');
				$desi=$this->input->post('designation');
				$shift=$this->input->post('shift');
				$monthleave=$this->input->post('monthleave');
				
				$emp_name=$this->input->post('emp_name');
				$gender=$this->input->post('gender');
				$dob=$this->input->post('dob');
				$natinality=$this->input->post('natinality');
				$religion=$this->input->post('religion');
				$cast=$this->input->post('cast');
				$sub_cast=$this->input->post('sub_cast');
				$mstatus=$this->input->post('mstatus');
				$experience=$this->input->post('experience');
				$mobile=$this->input->post('mobile_no');
				$ph_no=$this->input->post('phone_no');
				$email=$this->input->post('email');
				$bloodg=$this->input->post('bl_group');
				$reference=$this->input->post('reference');
				
				$caddress=$this->input->post('caddress');
				$haddress=$this->input->post('haddress');
				$spe_sub=$this->input->post('spe_subject');
				
				$profe=$this->input->post('professional');
				$education=$this->input->post('education');
				
				$data=array("number"=>$number,"apply_on"=>$date1,"form_no"=>$form_no,"emp_code"=>$emp_code,
							"punch_no"=>$punch_no,"joining_date"=>$joiningon,"emp_type"=>$emp_type,"salary"=>$salary,
							"salaryperday"=>$salaryperday,"designation"=>$desi,"shift"=>$shift,"monthleave"=>$monthleave,
							"emp_name"=>$emp_name,"gender"=>$gender,"dob"=>$dob,"natinality"=>$natinality,
							"religion"=>$religion,"cast"=>$cast,"sub_cast"=>$sub_cast,"mstatus"=>$mstatus,
							"experience"=>$experience,"mobile_no"=>$mobile,"phone_no"=>$ph_no,"email"=>$email,
							"bl_group"=>$bloodg,"reference"=>$reference,"caddress"=>$caddress,"haddress"=>$haddress,
							"spe_subject"=>$spe_sub,"professional"=>$profe,"education"=>$education);
							
							
				$this->model->ins_data('register',$data);
				
				echo "<script>alert('Record Suceessfully Inserted......');</script>";
				redirect('controler/view_data');
			
			}
			}
			else
			{
				$this->load->view('registarion.php');
			}

		}
		
		
		 function view_data()
		{
			$this->load->model('model');
			$v['vi']=$this->model->show_data('register');
			$this->load->view('view.php',$v);
			
		}
		

		
		
	/*	public function del_record()
		{
			$this->load->model('model');
			$did=$this->uri-
			$this->model->de>segment(3);
			$id=array("reg_id"=>$did);lete_record('register',$id);
			echo "<script>alert('Record Suceessfyllu Deleted.....');</script>";
			redirect('controler/view_data');
			
		}
		
		public function edit_record()
		{
			$this->load->model('model');
			$edt=$this->uri->segment(3);
			$ed=array("reg_id"=>$edt);
			$edi['e_id']=$this->model->ed_record('register',$ed);
			
			$this->load->view('edit.php',$edi);
			
			if($this->input->post('update'))
			{        	
				
				$num=$this->input->post('number');
				$dat1=$this->input->post('apply_on');
				$for=$this->input->post('form_no');
				
				$empco=$this->input->post('emp_code');
				$punch=$this->input->post('punch_no');
				$joiningdate=$this->input->post('joining_date');
				$emptype=$this->input->post('emp_type');
				$sal=$this->input->post('salary');
				$salpday=$this->input->post('salaryperday');
				$design=$this->input->post('designation');
				$sft=$this->input->post('shift');
				$monthle=$this->input->post('monthleave');
				
				$empname=$this->input->post('emp_name');
				$gen=$this->input->post('gender');
				$dobirth=$this->input->post('dob');
				$natinal=$this->input->post('natinality');
				$reli=$this->input->post('religion');
				$cas=$this->input->post('cast');
				$subcast=$this->input->post('sub_cast');
				$merstatus=$this->input->post('mstatus');
				$expe=$this->input->post('experience');
				$mo_no=$this->input->post('mobile_no');
				$phone_no=$this->input->post('phone_no');
				$email_id=$this->input->post('email');
				$blgroup=$this->input->post('bl_group');
				$refe=$this->input->post('reference');
				
				$curraddress=$this->input->post('caddress');
				$homaddress=$this->input->post('haddress');
				$spesub=$this->input->post('spe_subject');
				
				$profess=$this->input->post('professional');
				$edu=$this->input->post('education');
				
				
				
				
				$data=array("number"=>$num,"apply_on"=>$dat1,"form_no"=>$for,"emp_code"=>$empco,
							"punch_no"=>$punch,"joining_date"=>$joiningdate,"emp_type"=>$emptype,"salary"=>$sal,
							"salaryperday"=>$salpday,"designation"=>$design,"shift"=>$sft,"monthleave"=>$monthle,
							"emp_name"=>$empname,"gender"=>$gen,"dob"=>$dobirth,"natinality"=>$natinal,
							"religion"=>$reli,"cast"=>$cas,"sub_cast"=>$subcast,"mstatus"=>$merstatus,
							"experience"=>$expe,"mobile_no"=>$mo_no,"phone_no"=>$phone_no,"email"=>$email_id,
							"bl_group"=>$blgroup,"reference"=>$refe,"caddress"=>$curraddress,"haddress"=>$homaddress,
							"spe_subject"=>$spesub,"professional"=>$profess,"education"=>$edu);
							
					$this->model->update_record('register',$data,$ed);
				    echo "<script>alert('Record Successfully Updated....');</script>";
		
					redirect('controler/view_data');
			}
		}
	*/	

		 function Excel_data()
		{
		$this->load->model("model");
		if($this->input->post('export'))
		{
			
		 $this->load->library('excel');
		 $object = new PHPExcel();
	   
		 $object->setActiveSheetIndex(0);
	   
		 $table_columns = array("Reg_ID", "Emp_Name", "Emp_type", "Designation", "Shift","Gender","Birth Date","Natinality",
								"Mstatus","Experience","Mobile_No","Phone_NO","Email","Blood Group","Current_Address",
							"Professional","Education");
	   
		 $column = 0;
	   
		 foreach($table_columns as $field)
		 {
		  $object->getActiveSheet()->setCellValueByColumnAndRow($column, 1, $field);
		  $column++;
		 }
	   
		 $vi = $this->model->show_data();
	   
		 $excel_row = 2;
	   
		 foreach($vi as $row)
		 {
		  $object->getActiveSheet()->setCellValueByColumnAndRow(0, $excel_row, $row->reg_id);
		  $object->getActiveSheet()->setCellValueByColumnAndRow(1, $excel_row, $row->emp_name);
		  $object->getActiveSheet()->setCellValueByColumnAndRow(2, $excel_row, $row->emp_type);
		  $object->getActiveSheet()->setCellValueByColumnAndRow(3, $excel_row, $row->designation);
		  $object->getActiveSheet()->setCellValueByColumnAndRow(4, $excel_row, $row->shift);
		  $object->getActiveSheet()->setCellValueByColumnAndRow(5, $excel_row, $row->gender);
		  $object->getActiveSheet()->setCellValueByColumnAndRow(6, $excel_row, $row->dob);
		  $object->getActiveSheet()->setCellValueByColumnAndRow(7, $excel_row, $row->natinality);
		  $object->getActiveSheet()->setCellValueByColumnAndRow(8, $excel_row, $row->mstatus);
		  $object->getActiveSheet()->setCellValueByColumnAndRow(9, $excel_row, $row->experience);
		  $object->getActiveSheet()->setCellValueByColumnAndRow(10, $excel_row, $row->mobile_no);
		  $object->getActiveSheet()->setCellValueByColumnAndRow(11, $excel_row, $row->phone_no);
		  $object->getActiveSheet()->setCellValueByColumnAndRow(12, $excel_row, $row->email);
		  $object->getActiveSheet()->setCellValueByColumnAndRow(13, $excel_row, $row->bl_group);
		  $object->getActiveSheet()->setCellValueByColumnAndRow(14, $excel_row, $row->caddress);
		  $object->getActiveSheet()->setCellValueByColumnAndRow(15, $excel_row, $row->professional);
		  $object->getActiveSheet()->setCellValueByColumnAndRow(16, $excel_row, $row->education);
		  $excel_row++;
		 }
	   
		 $object_writer =PHPExcel_IOFactory::createWriter($object, 'Excel5');
		 header('Content-Type: application/vnd.ms-excel');
		 header('Content-Disposition: attachment;filename="Employee Data.xls"');
		 $object_writer->save('php://output');
		}
	   

		}




	}
?> 


