<?php
session_start();
$_SESSION['alogin']=="";
session_unset();
//session_destroy();
$_SESSION['errmsg']="Вы вышли успешно";
?>
<script language="javascript">
document.location="index.php";
</script>
