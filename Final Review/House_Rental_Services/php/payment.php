<?php
session_start();

function getMail()
{
	# code...
	$emaile = $_SESSION['email'];
	echo $emaile;
}

function getrentermail()
{
  $emaile = $_SESSION['email'];
  $dbhost = "localhost";
  $dbuser = "root";
  $dbpass = "";
  $db = "houserentalsystems";
  $id = $_GET['id'];
  $conn = new mysqli($dbhost, $dbuser, $dbpass,$db) or die("Connect failed: %s\n". $conn -> error);
  $select = "select email from sethome where houseid= $id";
    $result = $conn->query($select);
  
    while($row = $result->fetch_assoc()){
      echo $row['email'];
    }
}

function connect()
{
	$emaile = $_SESSION['email'];
	$dbhost = "localhost";
  $dbuser = "root";
  $dbpass = "";
  $db = "houserentalsystems";
  $id = $_GET['id'];
  $username=$email=$cnum=$cname=" ";
  if (isset($_POST['firstname'])) {
    $username = $_POST['firstname'];
  //$username = $_POST['firstname'];
  }
  if(isset($_POST['email'])){
	$email = $_POST['email'];
}
  if(isset($_POST['cardnumber'])) {
	$cnum = $_POST['cardnumber'];
}
  if(isset($_POST['cardname'])) {
	$cname = $_POST['cardname'];
}
  $conn = new mysqli($dbhost, $dbuser, $dbpass,$db) or die("Connect failed: %s\n". $conn -> error);
  $select = "select email,housetype,price,address from sethome where houseid= $id";
    $result = $conn->query($select);
	
    while($row = $result->fetch_assoc()){
    //echo $row['housetype']." ".$row['price']." ".$row["city"]." ";
    $remail = $row['email'];
    $_SESSION['renteremail']=$remail;
    $price = $row['price'];
    $type = $row['housetype'];
    $add = $row['address'];
    $insert = "insert into bookings values('$emaile','$remail','$id','$price','$add')";
    $update = "update sethome set booked=1 where houseid= $id";
    $insert1 = "insert into payment values('$username','$email','$price','$cname','$cnum')";
    $stmt3 = $conn->query($insert1);

    $stmt = $conn->query($insert);
     $stmt2 = $conn->query($update);
    echo "yes";
  }
}

function getPrice()
{
	$dbhost = "localhost";
  $dbuser = "root";
  $dbpass = "";
  $db = "houserentalsystems";
  $id = $_GET['id'];
  $conn = new mysqli($dbhost, $dbuser, $dbpass,$db) or die("Connect failed: %s\n". $conn -> error);
  $select = "select price from sethome where houseid= $id";
    $result = $conn->query($select);

    while($row = $result->fetch_assoc()){
    	echo $row['price'];

}
}
 ?>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="../js/mailsend.js"></script>
<style>
body {
  font-family: Arial;
  font-size: 17px;
  padding: 8px;
}

* {
  box-sizing: border-box;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: #4CAF50;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #4A90D6;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}


@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}
h2 {
  text-align: center;
}

</style>
</head>
<body>

<h2 >Payment Form</h2>
<div class="row">
  <div class="col-75">
    <div class="container">
      <form method="post" onsubmit="pay();">
      
        <div class="row">
          <div class="col-50">
            <h3>Billing Address</h3>
            <label for="fname"><i class="fa fa-user"></i> Full Name</label>
            <input type="text" id="fname" name="firstname" placeholder="Pranay">
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <input type="text" id="email" name="email" placeholder="Munnaf@example.com">
          

          <div class="row">
              
              <div class="col-50">
                <label for="price">Total Price</label>
                <input type="text" id="price" name="Price" placeholder="00001" readonly>
              </div>
            </div>
          </div>
            

          <div class="col-50">
            <h3>Payment</h3>
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="cname">Name on Card</label>
            <input type="text" id="cname" name="cardname" placeholder="(Lokanatha)">
            <label for="ccnum">Credit card number</label>
            <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">
            <label for="expmonth">Exp Month</label>
            <input type="text" id="expmonth" name="expmonth" placeholder="September">
            <div class="row">
              <div class="col-50">
                <label for="expyear">Exp Year</label>
                <input type="text" id="expyear" name="expyear" placeholder="2018">
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" placeholder="352">
              </div>
            </div>
          </div>
          
        </div>
        
        <input type="button" value="Continue to checkout" onclick="pay()" class="btn">
      </form>
    </div>
  </div>
  
</div>

</body>
</html>

<script type="text/javascript">
	var price = "<?php getPrice() ?>";

	document.getElementById('price').value = price;

  var renter = "<?php getrentermail() ?>";


function pay()
{	
	var co = "<?php connect() ?>";
  
	if(co=="yes"){
		
		alert("your Home is successfully booked");
		var email = "<?php getMail() ?>";
    var otp ="";
    for(var i=0;i<6;i++){
    otp=otp +Math.floor(Math.random()*10)+"";
    }

    sendEmail(renter,"your home is booked","Hello Mr/Mrs. "+email+"your home is sold for the price "+price+"<br> the rentee details are :<br><br> Email : "+email+"<br>The security code is "+otp+"<br><br>Thanks & Regards,<br>HOUSE RENTAL SYSTEMS.<br>")

		sendEmail(email,"successfully booked the house","Hello Mr/Mrs. "+email+" <br> You booked the home on the House Rental Services is successfully booked for the price "+price+"<br>The security code is "+otp+"<br><br>Thanks & Regards,<br>HOUSE RENTAL SYSTEMS.<br>");
		window.open("../php/showHomes.php","_self");
		return false;


	}
	else{
		alert("your home is not booked successfully");
	}
}


</script>