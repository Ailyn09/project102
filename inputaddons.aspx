<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.3.min.js"></script>
    <!--Bootstrap 3.3.7-->
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <!--Bootstrap-Select-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/css/bootstrap-select.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/js/bootstrap-select.min.js"></script>
</head>

<body>
    <form id="form1" runat="server">
        <h1>Input Group With Bootstrap Select</h1><br><br>
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10 col-md-offset-1 col-lg-offset-1">
                <div class="form-group">
                    <label>Weight</label>
                    <div class="input-group">
                        <input type="text" class="form-control" id="kilo" placeholder="Kilo" onblur="calc()">
                        <span class="input-group-btn">
                            <select class="form-control btn selectpicker" data-live-search="true" data-width="100%">
                                <option value="atomic mass(amu)">atomic mass(amu)</option><!--atomic mass(amu)-->
                                <option value="carat(metric)">carat(metric)</option><!--carat(metric)-->
                                <option value="cental">cental</option><!--cental-->
                                <option value="centigram">centigram</option><!--centigram-->
                                <option value="dekagram">dekagram</option><!--dekagram-->
                                <option value="dram(dr)">dram(dr)</option><!--dram(dr)-->
                                <option value="gram(g)">gram(g)</option><!--gram(g)-->
                                <option value="hundredweight (UK) ">hundredweight (UK)</option><!--hundredweight (UK)-->
                                <option value="kilogram (kg)">kilogram (kg)</option><!--kilogram (kg)-->
                                <option value="microgram (µg)">microgram (µg)</option><!--microgram (µg)    -->
                                <option value="milligram (mg)">milligram (mg)</option><!--milligram (mg)-->
                                <option value="newton (Earth)">newton (Earth)</option><!--newton (Earth)-->
                                <option value="ounce (oz)">ounce (oz)</option><!--ounce (oz)-->
                                <option value="pennyweight (dwt)">pennyweight (dwt)</option><!--pennyweight (dwt)-->
                                <option value="pound (lb)">pound (lb)</option><!--pound (lb)-->
                                <option value="quarter">quarter</option><!--quarter-->
                                <option value="stone">stone</option><!--stone-->
                                <option value="ton (UK, long)">ton (UK, long)</option><!--ton (UK, long)-->
                                <option value="ton (US, short)">ton (US, short)</option><!--ton (US, short)-->
                                <option value="tonne (t)">tonne (t)</option><!--tonne (t)-->
                                <option value="troy ounce">troy ounce</option><!--troy ounce-->
                            </select>
                        </span>
                    </div>
                </div>
            </div>
            <footer id="footer"></footer>
        </div>
    </form>
</body>

</html>
<style type="text/css">
.input-group-btn select {
    border-color: #ccc;
    margin-top: 0px;
    margin-bottom: 0px;
    padding-top: 7px;
    padding-bottom: 7px;
}
</style>
<!--
    References:
        UNITS: http://www.unit-conversion.info/weight.html
-->
