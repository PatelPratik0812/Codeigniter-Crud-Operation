<!DOCTYPE html>
 <html>
  <head>
   <meta charset="ISO-8859-1"> 
   <title>EMP</title> 
   <!-- <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>-->
  
  <script type="text/javascript">
  $(document).ready(function() {
    $("#date1").datepicker({
            changeMonth: true,
            changeYear: true,
            yearRange: '1998:2038',
           
        });
	
  });
  
  function add(){
	
	document.getElementById("haddress").value=document.getElementById("caddress").value;
            
}
  </script>
   </head> 
  
<form method="post" >

   <body style="background-color:#dee0e2"> 
   <div style="width: 100%; position: relative; float: left; background-color: #286fb7; margin-bottom: 20px;" > 
  <h2 align="center" style="color: white; margin-top: 8px;">Employee Registration Master</h2> 
  </div> 
  <div style="width:5%; position: relative; float: left; margin-top:0px; "> 
  <fieldset style="border-radius: 5px;"> 
  <img  src="image/profile.png" height="90px" width="70px"> 
  </fieldset> 
  </div> 
  <div style="width: 22%; position: relative; float:left; margin-left:60px;"> 
  <fieldset style="border-radius: 5px;"> 
  <legend>Aplication Detail</legend> 
  <table cellpadding="1" style="font-size:14px;"> 
  <tr> 
  <td>Number:</td> 
  <td><input type="text" name="number" value="<?php echo $e_id[0]->number;?>" style="width: 100px;" ></td> 
  </tr> 
  <tr> 
  <td>Aplly On:</td> 
  <td><input type="text" id="date1" name="apply_on" value="<?php echo $e_id[0]->apply_on;?>" style="width: 100px;"></td> 
  </tr> 
  <tr> 
  <td>Form No:</td> 
  <td><input type="text" name="form_no"  value="<?php echo $e_id[0]->form_no;?>" style="width: 100px;"></td> 
  </tr> 
  </table> 
  </fieldset> 
  </div> 
  <div style="width:66%; position:relative; float:left; margin-left:1px;"> 
  <fieldset style="border-radius: 5px;"> 
  <legend>Official Detail</legend> 
  <table cellpadding="1" style="font-size:14px;"> 
  <tr>
  <td>Emp Code:</td>
  <td><input type="text" style="width: 100px;" name="emp_code" value="<?php echo $e_id[0]->emp_code;?>"></td> 
  <td>&emsp;Emp Type:</td>
  <td><select style="width: 80px;" name="emp_type"> 
  <option value="">Select Emp Type</option> 
  <option value="Full Time">Full Time</option> 
  <option value="Part Time">Part Time</option> 
  </select>
  </td> 
  <td>&emsp;Designation:</td> 
  <td><select style="width: 120px;" name="designation" > 
  <option value="">Select Designation</option> 
  <option value="Lacturer">Lacturer</option> </select>
  </td> 
  </tr> 
  <tr>
  <td>punchNo:</td>
  <td><input type="text" style="width: 100px;" name="punch_no" value="<?php echo $e_id[0]->punch_no;?>"></td> 
  <td>&emsp;Salary:</td><td><input type="number" style="width: 80px;" name="salary" value="<?php echo $e_id[0]->salary;?>"></td> 
  <td>&emsp;Shift:</td> <td><select style="width: 120px;" name="shift" > 
  <option value="">Select Shift</option> 
  <option value="Morning">Morning</option> 
  <option value="After Noon">After Noon</option> 
  <option value="Evening">Evening</option> 
  <option value="Night">Night</option> 
  </select></td> 
  </tr> 
  <tr>
  <td>JoinningOn:</td> 
  <td><input type="date" style="width: 100px;" name="joining_date" value="<?php echo $e_id[0]->joining_date;?>"></td> 
  <td>&emsp;Salary Per Day:</td>
  <td><input type="number" style="width: 80px;" name="salaryperday" value="<?php echo $e_id[0]->salaryperday;?>"></td> 
  <td>&emsp;Month Leave:</td>
  <td><input type="text" style="width: 120px;" name="monthleave" value="<?php echo $e_id[0]->monthleave;?>"></td> 
  </tr> 
  </table> 
  </fieldset> 
  </div> 
  <div style="width:50%; position:relative; float:left;"> 
  <a href="#">Capture</a> &emsp; <a href="#">Remove</a> 
  <fieldset> 
  <legend>Employee Detail</legend> 
  <table cellpadding="1" style="font-size:14px;"> 
  <tr> 
  <td>Employee Name:</td> 
  <td colspan="3"><input type="text" name="emp_name" style="width: 100%;" value="<?php echo $e_id[0]->emp_name;?>"></td> 
  </tr> 
  <tr> 
  <td>Gender:</td> 
  <td style="width:150px;"><input type="radio" name="gender" value="Male"
   <?php $gender=$e_id[0]->gender; if($gender=='Male'){echo "checked==checked";}?>>Male <input type="radio" name="gender" value="Female"     <?php $gender=$e_id[0]->gender; if($gender=='Female'){echo "checked==checked";}?>>Female</td> 
  <td>&emsp;Birth Date:</td> 
  <td><input type="date" name="dob" style="width: 100px;" value="<?php echo $e_id[0]->dob;?>"></td> 
  <td></td> 
  </tr> 
  <tr> 
  <td>Natinality :</td> 
  <td><input type="text" name="natinality" style="width: 100px;" value="<?php echo $e_id[0]->natinality;?>"></td> 
  <td>&emsp;Religion:</td> 
  <td><input type="text" name="religion" style="width: 100px;" value="<?php echo $e_id[0]->religion;?>"></td> 
  </tr> 
  <tr> 
  <td>Cast:</td> 
  <td><select style="width: 100px;" name="cast" > 
  <option value="GEN">GEN</option> 
  <option value="OBC">OBC</option> 
  <option value="SC">SC</option> 
  <option value="ST">ST</option> 
  </select> </td> 
  <td>&emsp;Sub Cast:</td> 
  <td><input type="text" name="sub_cast" style="width: 100px;" value="<?php echo $e_id[0]->sub_cast;?>"></td> 
  </tr> 
  <tr> 
  <td>Married Status:</td> 
  <td><select style="width: 100px;" name="mstatus" > 
  <option value="Married">Married</option> 
  <option value="Single">Single</option> 
  </select> </td> 
  <td>&emsp;Expiriance:</td> 
  <td><input type="number" name="experience" style="width: 100px;" value="<?php echo $e_id[0]->experience;?>">&nbsp;</td> 
  <td>year's</td>
  </tr> 
  <tr> 
  <td>Mobile: </td> 
  <td><input type="text" name="mobile_no" style="width: 100px;" value="<?php echo $e_id[0]->mobile_no;?>"></td> 
  <td>&emsp;Phone </td> 
  <td><input type="text" name="phone_no"style="width: 100px;" value="<?php echo $e_id[0]->phone_no;?>"></td> 
  </tr> 
  <tr> 
  <td>E-Mail: </td> 
  <td><input type="email" name="email" style="width: 100px;" value="<?php echo $e_id[0]->email;?>"></td> 
  <td style="width:80px;" >Blood Group: </td> 
  <td><select style="width: 100px;" name="bl_group"> 
  <option value="">Select Blood Group</option> 
  <option value="A+">A+</option> 
  <option value="B+">B+</option> 
  <option value="O+">O+</option> 
  <option value="AB+">AB+</option> 
  <option value="A-">A-</option> 
  <option value="B-">B-</option> 
  </select>
  </td> 
  </tr> 
  <tr> 
  <td>Reference:</td> 
  <td colspan="3"><input type="text" name="reference" style="width:100%;" value="<?php echo $e_id[0]->reference;?>"></td> 
  </tr> 
  </table> 
  </fieldset> 
  </div> 
  <div style="width:49%; position:relative; float:left;"> 
  <fieldset style="padding-bottom: 45px;border-radius: 5px;" > 
  <legend>Address</legend> 
  <table cellpadding="2"> 
  <tr> 
  <td>Current Address:</td> 
  <td><textarea name="caddress" id="caddress" rows="4" cols="48"><?php echo $e_id[0]->caddress;?></textarea>
  </td> 
  </tr> 
  <tr> 
  <td colspan="2" align="right">
  <a href="#" onclick="add()">Copy Address</a></td> 
  </tr> 
  <tr> 
  <td>Home Address:</td> 
  <td><textarea name="haddress" rows="4" id="haddress" cols="48"><?php echo $e_id[0]->haddress;?></textarea></td> 
  </tr> 
  <tr> 
  <td>Special Subject:</td> 
  <td><textarea name="spe_subject" rows="4" cols="48"><?php echo $e_id[0]->spe_subject;?></textarea></td> 
  </tr> 
  <div>
  <tr> 
  <td colspan="2" align="center"><input type="submit" name="update" value="Update" style="height:30px; width: 120px; background-color:#1d7ee5;color:white;"></td></tr></div>
 
  
  </table> 
  </fieldset> 
  </div> 
  <div style="width:50%; position:relative; float:left; margin-top: -90px; margin-bottom: 15px;">
  <fieldset style="border-radius: 5px;"> 
  <legend>Qualification</legend> 
  <table cellpadding="2"> 
  <tr> <td>professional:</td> 
  <td><input type="text" name="professional" style="width:195%;" value="<?php echo $e_id[0]->professional;?>"></td> 
  </tr> 
  <tr> 
  <td>Education: </td> 
  <td><input type="text" name="education" style="width:195%;"  value="<?php echo $e_id[0]->education;?>"></td> 
  </tr> 
  </table> 
  </fieldset> 
  </div> 
  <div style="width:100%;height:50px; position:relative; float:left; background-color:#286fb7"> 
  </div> 
  </form>
  </body> 
  </html>