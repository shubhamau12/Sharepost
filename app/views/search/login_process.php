<?php
session_start();
if($_SERVER['REQUEST_METHOD'] == 'POST')
  {
    $dat=$_POST['dat1'];
  //   echo $dat;
    $data['date']=array();
    $data['eng']=array();
    $data['hindi']=array();
    
          //echo "success";
         
        $connect=Mysqli_connect('localhost','root','','shareposts');
        $query=" SELECT * FROM posts WHERE  (title LIKE '%$dat%') ";
        $result=mysqli_query($connect,$query);
        while($rows=Mysqli_fetch_assoc($result))
        {
              array_push( $data['date'] , $rows['created_at']);
              array_push( $data['eng'] , $rows['title']);
              array_push( $data['hindi'] , $rows['body']);
                          
        }
     echo json_encode($data);
    
         
      }

?>
