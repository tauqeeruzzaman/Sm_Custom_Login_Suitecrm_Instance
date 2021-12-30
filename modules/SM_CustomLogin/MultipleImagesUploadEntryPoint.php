<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
if(isset($_POST['action']) && $_POST['action']=='upload_images') {
    if(isset($_REQUEST['count_images']) == true){
        $count = $_REQUEST['count_images'];
//        $slider_images_names = array();
        $slider_images_paths = array();
        for($i = 0;$i<$count;$i++){
            $slider_image =  $_FILES['file_'.$i];
            $slider_image_name = $slider_image['name'];
            $slider_image_type = $slider_image['type'];
            $slider_image_tmp_name = $slider_image['tmp_name'];
            $slider_image_size = $slider_image['size'];
            $slider_image_path = 'modules/SM_CustomLogin/public/slider-images/'.$slider_image_name;
            move_uploaded_file($slider_image_tmp_name,$slider_image_path);
//            $slider_images_names[] = $slider_image;
            $slider_images_paths[] = $slider_image_path;
        }
//            $slider_images_names = base64_encode(serialize($slider_images_names));
//            $slider_images_paths = base64_encode(serialize($slider_images_paths));
        echo json_encode($slider_images_paths);
        die();
    }
}