<!DOCTYPE html>
<html>

<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
<link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="https://bootswatch.com/slate/bootstrap.min.css" />
	<link rel="stylesheet" href="css/dragndrop.table.columns.css" />

<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js"></script>



</script></div>

<div class="jquery-script-clear"></div>
</head>


<body style="background-color:#dee0e2">
	


<div class="jquery-script-clear"></div>
 <div class="table-responsive container" >
    
 </marquee><h1 style="color:#053a8e;font-size:40px;margin-left:170px;">Wel Come To Employee Registation Master</h1></marquee>
	<div align="right" style="margin-bottom:10px">
			<input type="text" name="search" placeholder="Search Here.....!" style="color:red; padding-top:4px;padding-bottom:4px;">
			<input type="submit" name="search" value="Search" class="btn btn-primary">
	</div>		

<table align="center" border="2" class="table table-bordered table-hover">

<thead>
<tr class="dnd-moved" style="color:#630a0a;background-color:#b3ed2d;">
	<th>Reg_Id</th>
	<th>Emp_name</th>
	<th>Emp_type</th>
	<th>Designation</th>
	<th>Shift</th>
	<th>Gender</th>
	<th>Birth Date</th>
	<th>Natinality</th>
	<th>Status</th>
	<th>Experiance</th>
	<th>Mobile-No</th>
	<th>PH-No</th>
	<th>E-Mail</th>
	<th>Blood Group</th>
	<th>Currenrt Address</th>
	<th>Professional</th>
	<th>Education</th>
	<th align="center" colspan="2">Action</th>
</thead>	
</tr>
<?php
foreach($vi as $fetch)
{
?>

<tbody style="color:#1a2d2d;">
<tr class="dnd-moved info">
	<td><?php echo $fetch->reg_id;?></td>
	<td><?php echo $fetch->emp_name;?></td>
	<td><?php echo $fetch->emp_type;?></td>
	<td><?php echo $fetch->designation;?></td>
	<td><?php echo $fetch->shift;?></td>
	<td><?php echo $fetch->gender;?></td>
	<td><?php echo $fetch->dob;?></td>
	<td><?php echo $fetch->natinality;?></td>
	<td><?php echo $fetch->mstatus;?></td>
	<td><?php echo $fetch->experience;?></td>
	<td><?php echo $fetch->mobile_no;?></td>
	<td><?php echo $fetch->phone_no;?></td>
	<td><?php echo $fetch->email;?></td>
	<td><?php echo $fetch->bl_group;?></td>
	<td><?php echo $fetch->caddress;?></td>
	<td><?php echo $fetch->professional;?></td>
	<td><?php echo $fetch->education;?></td>
	
	<td><?php echo anchor('controler/del_record/'.$fetch->reg_id,'Delete');?></	td>
	<td><?php echo anchor('controler/edit_record/'.$fetch->reg_id,'Edit');?></td>
	<td>
</tr>
</tbody>

<?php
}
?>
<form method="post" action="<?php echo base_url();?>controler/excel_data"></action>
<tr><td align="center" colspan="15"><input type="submit" name="export" class="btn btn-success" value="Export" /></td></tr>
</div>


    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="js/dragndrop.table.columns.js" type="text/javascript"></script>
	<script>
		$('.table').dragableColumns();
	</script>

<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36251023-1']);
  _gaq.push(['_setDomainName', 'jqueryscript.net']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>

</form>
</body>

</html>