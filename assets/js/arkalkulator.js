function updatePrice() {
    var sel_fajta = $("#fajta").find(":selected").attr("id");
    var sel_ido = $("#idotartam").find(":selected").val();
    var ar = $("#"+sel_fajta).data(sel_ido)
    console.log(sel_fajta)
    console.log(sel_ido)
    console.log(ar)
    $('#fizetendo').html(ar)
    var imagesrc = "/assets/img/cars/" + $("#"+sel_fajta).data("kep")
    console.log(imagesrc)
    $('#car-img').attr("src", imagesrc)
}


$(document).ready(function () {
  updatePrice();
    $("#fajta, #idotartam").change(function () {
        updatePrice();
    })
});
