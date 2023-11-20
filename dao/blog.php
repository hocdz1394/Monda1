<?php
// hiển thị tương tác với bảng blog
  require_once 'pdo.php';
 function get_tintucs($madm=0,$start=0,$limit=0){
    $sql = "SELECT * FROM blog p INNER JOIN categories_blog c ON p.madm = c.madm";
    if($madm!=0){
        $sql .= " WHERE p.madm = ".$madm;
    }
    if($limit!=0){
        $sql .= " LIMIT " .$start. "," .$limit;
    }
    $conn = pdo_get_connection();
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        return $stmt->fetchALL();
}
// tương tác với trang CTSP
function get_tintuc($id){
    $sql = "SELECT * FROM blog p INNER JOIN categories_blog c ON p.madm = c.madm WHERE p.id=".$id;
    $conn = pdo_get_connection();
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        return $stmt->fetch();
}
// phân trang 
function count_tintuc(){
    $sql = "SELECT count(*) AS soluong FROM blog";
    $conn = pdo_get_connection();
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    return $stmt->fetch();//chỉ lấy 1 sản phẩm
}
// tương tác với bảng categories_blog và hiển thị danh mục sp
function get_catogories($iddm){
 $sql = "SELECT * FROM categories_blog ";
 if($iddm>0){
    $sql.= "AND iddm=".$iddm;
 }
 $sql.=" ORDER BY stt DESC  ";
 $conn = pdo_get_connection();
 $stmt = $conn->prepare($sql);
 $stmt->execute();
 return $stmt->fetchALL();
}
// tương tác với bảng newspapers
function get_newspapers(){
    $sql = "SELECT * FROM newspapers LIMIT 3";
    $conn = pdo_get_connection();
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    return $stmt->fetchALL();
}

?>
