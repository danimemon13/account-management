
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
 
    Welcome <?php echo $this->session->userdata('user'); ?>  From the company <?php echo $this->session->userdata('company_name'); ?>

<br>  
<a href="Login/logout">Logout</a>
<?php 
print_r($ledger);
$rearrangedFinalData = array();
foreach($ledger AS $first) {
    foreach($first AS $var) {
        $temp = array();
        //$temp["opening"] =  isset($data['opening_balance']) ? $data['opening_balance'] : '';
       // $temp["opening_debit"] = isset($data['bf_debit']) ? $data['bf_debit'] : '';
        //$temp["opening_credit"] = isset($data['cr_amount']) ? $data['cr_amount'] : '';
        $temp['date'] = isset($var->ondate) ? $var->ondate : $var->ondate;
        $temp['narration'] = isset($var->narration) ? $var->narration : $var->narration;
        $temp['debit'] = $var->type=='debit' ? $var->amount : 0;
        $temp['credit'] = $var->type=='credit' ? $var->amount : 0;
      //  $temp['customer'] = $data['cust_name'];
        $rearrangedFinalData[] = $temp;
    }
}
?> 
<table border="1" style="text-align: center;margin-left: 100px;font-size: 26px;">
	<tr>
        <td>Date</td>
        <td>Narration</td>
        <td>Debit</td>
        <td>Credit</td>
        <td>Balance</td>
    </tr>
    <?php
    $balance=0;
    foreach ($opening_balance as $opening_balances) {
     	# code...
     	if($opening_balances->balance_type == 'DR'){
     		$balance = $opening_balances->opening_balance;
     	}
     	else{
     		$balance = '-'.$opening_balances->opening_balance;
     	}

     	?>
     	<tr>
     		<td></td>
     		<td></td>
     		<td></td>
     		<td></td>
     		<td><?=$opening_balances->opening_balance .' '.$opening_balances->balance_type;?></td>
     	</tr>
     	<?php
     } 

 
    foreach($rearrangedFinalData AS $row)
    {
             ?>
            <tr>
                <td><?php echo date_format(date_create($row['date']),'d-M-Y'); ?></td>
                <td><?php echo $row['narration'] ?></td>
                <td><?php echo $row['debit'] > 0 ? $row['debit'] : '' ?></td>
                <td><?php echo $row['credit'] > 0 ? $row['credit'] : '' ?></td>
                <td><?php $balance = ($balance + $row['debit'] - $row['credit']); 
                $final_balance = str_replace("-","",$balance);
                echo $final_balance;
                if($balance <=0 ){
                    echo " CR";
                }
                else{
                    echo " DR";
                }
                ?>
                </td>
                
            </tr>
            <?php 
    }
    ?>
</table>
</body>
</html>

    </div>
</div>


