<?php
    $name = $_POST['fname'];
    $Roll = $_POST['rollno'];
    $sid = $_POST['StudentID'];
    $email = $_POST['email'];
    if (isset($_POST['date1'])) {
        $startingdate = $_POST['date1'];
    } else {
        echo "<h1>starting date not set.</h1>";
    }
    if (isset($_POST['date2'])) {
        $endingdate = $_POST['date2'];
    } 
    else 
    {
        echo "<h1>ending date not set.</h1>";
    }    
    
//Import PHPMailer classes into the global namespace
//These must be at the top of your script, not inside a function
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

//Load Composer's autoloader
require 'PHPMailer/Exception.php';
require 'PHPMailer/SMTP.php';
require 'PHPMailer/PHPMailer.php';

//Create an instance; passing `true` enables exceptions
$mail = new PHPMailer(true);

try {
    //Server settings
    $mail->SMTPDebug = SMTP::DEBUG_SERVER;                      //Enable verbose debug output
    $mail->isSMTP();                                            //Send using SMTP
    $mail->Host       = 'smtp.gmail.com';                     //Set the SMTP server to send through
    $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
    $mail->Username   = 'systemattandence@gmail.com';                     //SMTP username
    $mail->Password   = 'jaknvsbdsgawijbp';                               //SMTP password
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;            //Enable implicit TLS encryption
    $mail->Port       = 465;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

    //Recipients
    $mail->setFrom('systemattandence@gmail.com', 'System Attandence');
    $mail->addAddress('np03022005@gmail.com');     //Add a recipient

    //Content
    $mail->isHTML(true);                                  //Set email format to HTML
    $mail->Subject = 'Here is the subject';
    $mail->Body    = 'This is the HTML message body <b>in bold!</b>';
    $mail->addCC($email, 'CC Recipient 1');

    $mail->send();
    echo 'Message has been sent';
} catch (Exception $e) {
    echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
}

?>
