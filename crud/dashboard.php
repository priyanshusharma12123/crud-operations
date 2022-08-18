<?php 
	include_once("DBConnect.php");
	include_once("header.php");
?>

	<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
		<h1>Enquiry List 
			<span>
				<a href="enquiry.php" class="btn btn-info" style="float:; margin-left:3%">Add New Enquiry</a>&nbsp;&nbsp;&nbsp;&nbsp;
			</span>
		</h1>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">

       
          <div class="box">
            
            <!-- /.box-header -->
            <div class="box-body table-responsive">
				<table id="example3" class="table table-bordered table-striped table-hover">
					<thead  style="background-color:#367fa9; color:#fff">
						<tr>
							<th>#</th> 
							<th>Name</th> 													 
							<th>Mobile Number</th> 
							<th>Email</th> 	
							<th>Addess</th> 
							<th>Edit</th>	
							<th>Delete</th>									
						</tr> 
					</thead>
					<tbody style="font-size:14px"> 
							<?php 
							$result = mysqli_query($con,"select * from enquiry order by enquiry_id DESC");
							if(mysqli_num_rows($result)>0)
							{		
								$n = 1;
								while($row=mysqli_fetch_assoc($result))
								{							
							?>	
							<tr>
								<td><?php echo $n;?></td>
								<td><?php echo $row['name'];?></td>
								<td><?php echo $row['phone'];?></td>
								<td><?php echo $row['email'];?></td>
								<td><?php echo $row['address'];?></td>
								<td><a href="editenquiry.php?enquiry_id=<?php echo $row['enquiry_id'];?>" class="btn btn-success">Edit</a></td>
								<td><a href="javascript:enquiry_id(<?php echo $row['enquiry_id'];?>)" class="btn btn-danger">Delete</a></td>
									
							</tr>
							<?php
										
									$n++;
									} 
								}	
							?>					
					</tbody>                
				</table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>

	<script type="text/javascript">
		function enquiry_id(enquiry_id)
		{
			 if(confirm('Sure To Remove This Record ?'))
			 {
				window.location.href='deleterecord.php?enquiry_id='+enquiry_id;
			 }
		}
	</script>
 
	<script>
		function isNumber(evt) 
		{
			evt = (evt) ? evt : window.event;
			var charCode = (evt.which) ? evt.which : evt.keyCode;
			if (charCode > 31 && (charCode < 48 || charCode > 57)) {
				return false;
			}
			return true;
		}
	</script>


<?php include_once("footer.php");?>


<script>
  $.validate({
    lang: 'en'
  });
</script>