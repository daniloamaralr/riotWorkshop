<people-table>
    <h3> People Table</h3>

    <table class="table table-bordered">
        <tr>
            
            <th each='{headername in opts.myheader}' scope="col">{headername}</th>

            <!-- <th>Name</th>
            <th>Favorite Color</th>     -->
        </tr>
        <tr each='{person in opts.mypeople}'>
            <td each='{valor in person}'>{valor}</td>
        </tr>


        <!-- <tr>
            <td>Bob</td>
            <td>Yellow</td>
        </tr>
        <tr>
            <td>Mark</td>
            <td>Blue</td>
        </tr> -->
    </table>

</people-table>