<?php require APPROOT . '/views/inc/header.php'; ?>
  <div class="jumbotron jumbotron-flud text-center">
  <center><h1 style="padding-bottom:20px;"> Tek Frames To Do List</h1>
    <div class="container">
    <div class="row">
    <div class="col-sm-4" Style="background-color:blue; height:400px;">
    </div>
    <div class="col-sm-4" Style="background-color:yellow;">
    <h1 class="display-3"><?php echo $data['title']; ?></h1>
    <p class="lead"><?php echo $data['description']; ?></p>
    </div>
    <div class="col-sm-4" Style="background-color:green;">
    </div>
    </div>
    
    </div>
    </div>
  </div> 
<?php require APPROOT . '/views/inc/footer.php'; ?>
