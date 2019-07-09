<?php
  class Post {
    private $db;

    public function __construct(){
      $this->db = new Database;
    }

    public function getPosts()
    {
        $org=$_SESSION['user_id'];
     //   echo $org;
      $this->db->query('SELECT  id,created_at ,body from posts
                        where status=1 AND user_id= "'.$org.'" ');


      $results = $this->db->resultSet();

      return $results;
    }

    public function addPost($data){
      $this->db->query('INSERT INTO posts (title, user_id, body ) VALUES(:title, :user_id, :body)');
      // Bind values
      $this->db->bind(':title', $data['title']);
      $this->db->bind(':user_id', $data['user_id']);
      $this->db->bind(':body', $data['body']);

      // Execute
      if($this->db->execute()){
        return true;
      } else {
        return false;
      }
    }

    public function updatePost($data){
      $this->db->query('UPDATE posts SET title = :title, body = :body WHERE id = :id');
      // Bind values
      $this->db->bind(':id', $data['id']);
      $this->db->bind(':title', $data['title']);
      $this->db->bind(':body', $data['body']);

      // Execute
      if($this->db->execute()){
        return true;
      } else {
        return false;
      }
    }

    public function getPostById($id){
      $this->db->query('SELECT * FROM posts WHERE id = :id');
      $this->db->bind(':id', $id);

      $row = $this->db->single();

      return $row;
    }

    public function deletePost($id)
    {
      $this->db->query('DELETE FROM posts WHERE id = :id');
      // Bind values
      $this->db->bind(':id', $id);

      // Execute
      if($this->db->execute()){
        return true;
      } else {
        return false;
      }
    }

// done list

public function donePost($id)
{
  $this->db->query('UPDATE posts SET status = 0  WHERE id = :id');
  // Bind values
  $this->db->bind(':id', $id);

  // Execute
  if($this->db->execute()){
    return true;
  } else {
    return false;
  }
}

  }

  