<?php require('app/views/partials/head.php') ?>
    <h1>Examination</h1>
    <form method="POST" action="/zavrsni/examination">
        <label>Datum:</label>
        <input type="date" name="date_time">
        </br>          
                  <label>Patient:</label>
                  <select name="patient_ID" autocomplete="off"> 
       <option value="volvo" selected="selected">please select</option>
       
        <?php foreach($patients as $patient): ?>
        
       <option value="<?=$patient->id?>"><?= $patient->name ." ".$patient->surname ?></option>
        
        <?php endforeach; ?>
        
            
    </select></br>
    
    
                    <label>Type examination:</label>
                     <select name="tip_ID" autocomplete="off"> 
       <option value="volvo" selected="selected">please select</option>
       
        <?php foreach($examinations as $examination): ?>
        
       <option value="<?=$examination->id?>"><?= $examination->name ?></option>
        
        <?php endforeach; ?>
        
            
    </select></br>
    
    
        <button type="submit">Submit</button>
    </form>

<?php require('app/views/partials/footer.php') ?>
