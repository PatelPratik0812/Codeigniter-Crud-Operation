<!DOCTYPE html>
 <html>
  <head>
   <meta charset="ISO-8859-1"> 
   <title>Insert title here</title> 
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
  
  <script>
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
  

   <body style="background-color:#dee0e2">
<form method="post">   
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
  <td><input type="text" name="number" style="width: 100px;"><?php echo form_error('number');?></td> 
  
  </tr> 
  <tr> 
  <td>Aplly On:</td> 
  <td><input type="text" id="date1" placeholder="Date" name="apply_on" style="width: 100px;"><?php echo form_error('apply_on');?></td> 
  </tr> 
  <tr> 
  <td>Form No:</td> 
  <td><input type="text" name="form_no" style="width: 100px;"><?php echo form_error('form_no');?></td> 
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
  <td><input type="text" style="width: 100px;" name="emp_code"><?php echo form_error('emp_code');?></td> 
  <td>&emsp;Emp Type:</td>
  <td><select style="width: 80px;" name="emp_type"> 
  <option value="">Select Emp Type</option> 
  <option value="Full Time">Full Time</option> 
  <option value="Part Time">Part Time</option> 
  </select><?php echo form_error('emp_type');?>
  </td> 
  <td>&emsp;Designation:</td> <?php echo form_error('designation');?>
  <td><select style="width: 120px;" name="designation"> 
  <option value="">Select Designation</option> 
  <option value="Lacturer">Lacturer</option> </select>
  </td> 
  </tr> 
  <tr>
  <td>punchNo:</td>
  <td><input type="text" style="width: 100px;" name="punch_no"><?php echo form_error('punch_no');?></td> 
  <td>&emsp;Salary:</td><td><input type="number" style="width: 80px;" name="salary"><?php echo form_error('salary');?></td> 
  <td>&emsp;Shift:</td> <td><select style="width: 120px;" name="shift"> <?php echo form_error('shift');?>
  <option value="">Select Shift</option> 
  <option value="Morning">Morning</option> 
  <option value="After Noon">After Noon</option> 
  <option value="Evening">Evening</option> 
  <option value="Night">Night</option> 
  </select></td> 
  </tr> 
  <tr>
  <td>JoinningOn:</td> 
  <td><input type="date" style="width: 100px;" name="joining_date"><?php echo form_error('joining_on');?></td> 
  <td>&emsp;Salary Per Day:</td>
  <td><input type="number" style="width: 80px;" name="salaryperday"><?php echo form_error('salaryperday');?></td> 
  <td>&emsp;Month Leave:</td>
  <td><input type="text" style="width: 120px;" name="monthleave"><?php echo form_error('monthleave');?></td> 
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
  <td colspan="3"><input type="text" name="emp_name" style="width: 100%;"><?php echo form_error('emp_name');?></td> 
  </tr> 
  <tr> 
  <td>Gender:</td> 
  <td style="width:150px;"><input type="radio" name="gender" value="Male">Male <input type="radio" name="gender" value="Female">Female <?php echo form_error('gender');?></td> 
  <td>&emsp;Birth Date:</td> 
  <td><input type="date" name="dob" style="width: 100px;"><?php echo form_error('dob');?></td> 
  <td>43</td> 
  </tr> 
  <tr> 
  <td>Natinality :</td> 
  <td><input type="text" name="natinality" style="width: 100px;"><?php echo form_error('natinality');?></td> 
  <td>&emsp;Religion:</td> 
  <td><input type="text" name="religion" style="width: 100px;" ><?php echo form_error('religion');?></td> 
  </tr> 
  <tr> 
  <td>Cast:</td> 
  <td><select style="width: 100px;" name="cast"> 
  <option value="GEN">GEN</option> 
  <option value="OBC">OBC</option> 
  <option value="SC">SC</option> 
  <option value="ST">ST</option> 
  </select><?php echo form_error('cast');?> </td> 
  <td>&emsp;Sub Cast:</td> 
  <td><input type="text" name="sub_cast" style="width: 100px;"><?php echo form_error('sub_cast');?></td> 
  </tr> 
  <tr> 
  <td>Married Status:</td> 
  <td><select style="width: 100px;" name="mstatus"> 
  <option value="Married">Married</option> 
  <option value="Single">Single</option> 
  </select><?php echo form_error('mstatus');?> </td> 
  <td>&emsp;Expiriance:</td> 
  <td><input type="number" name="experience" style="width: 100px;"><?php echo form_error('experience');?>&nbsp;</td> 
  <td>year's</td>
  </tr> 
  <tr> 
  <td>Mobile: </td> 
  <td><input type="text" name="mobile_no" style="width: 100px;"><?php echo form_error('mobile_no');?></td> 
  <td>&emsp;Phone </td> 
  <td><input type="text" name="phone_no"style="width: 100px;"><?php echo form_error('phone_no');?></td> 
  </tr> 
  <tr> 
  <td>E-Mail: </td> 
  <td><input type="email" name="email" style="width: 100px;"><?php echo form_error('email');?></td> 
  <td style="width:80px;">Blood Group: </td> 
  <td><select style="width: 100px;" name="bl_group"> 
  <option value="">Select Blood Group</option> 
  <option value="A+">A+</option> 
  <option value="B+">B+</option> 
  <option value="O+">O+</option> 
  <option value="AB+">AB+</option> 
  <option value="A-">A-</option> 
  <option value="B-">B-</option> 
  </select><?php echo form_error('bl_group');?>
  </td> 
  </tr> 
  <tr> 
  <td>Reference:</td> 
  <td colspan="3"><input type="text" name="reference" style="width:100%;"><?php echo form_error('reference');?></td> 
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
  <td><textarea name="caddress" id="caddress" rows="4" cols="48"></textarea><?php echo form_error('caddress');?>
  </td> 
  </tr> 
  <tr> 
  <td colspan="2" align="right">
  <a href="#" onclick="add()">Copy Address</a></td> 
  </tr> 
  <tr> 
  <td>Home Address:</td> 
  <td><textarea name="haddress" rows="4" id="haddress" cols="48"></textarea><?php echo form_error('haddress');?></td> 
  </tr> 
  <tr> 
  <td>Special Subject:</td> 
  <td><textarea name="spe_subject" rows="4" cols="48"></textarea><?php echo form_error('spe_subject');?></td> 
  </tr> 
  <tr> 
  <td colspan="2" align="center"><br><input type="submit" name="save&print "value="Save&Print" style="height:30px; width: 120px; background-color:#1d7ee5;color:white;">
  &emsp;<input type="submit" name="save" value="Save" style="height:30px; width: 80px;background-color:#1d7ee5;color:white;">
  &emsp;<input type="submit" name="delete" value="Delete" style="height:30px; width: 80px ; background-color:#1d7ee5;color:white;"> 
  &emsp;<input type="submit" name="clear" value="Clear" style="height:30px; width: 80px;background-color:#1d7ee5;color:white;"></td> 
  </tr> 
  </table> 
  </fieldset> 
  </div> 
  <div style="width:50%; position:relative; float:left; margin-top: -90px; margin-bottom: 15px;">
  <fieldset style="border-radius: 5px;"> 
  <legend>Qualification</legend> 
  <table cellpadding="2"> 
  <tr> <td>professional:</td> 
  <td><input type="text" name="professional" style="width:195%;" ><?php echo form_error('professional');?></td> 
  </tr> 
  <tr> 
  <td>Education: </td> 
  <td><input type="text" name="education" style="width:195%;"><?php echo form_error('education');?></td> 
  </tr> 
  </table> 
  </fieldset> 
  </div> 
  <div style="width:100%;height:50px; position:relative; float:left; background-color:#286fb7"> 
  </div> 
  </form>
  </body> 
    </html>