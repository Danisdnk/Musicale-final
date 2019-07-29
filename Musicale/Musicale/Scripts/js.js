$('[data-toggle=offcanvas]').click(function () {
    $('.row-offcanvas').toggleClass('active');
    $('.collapse').toggleClass('in').toggleClass('hidden-xs').toggleClass('visible-xs');
});




//validacion tipo img
function fileValidation() {

    var fileInput = document.getElementById('ImgPortada');

    var peso = fileInput.files[0];

    var filePath = fileInput.value;
    var allowedExtensions = /(\.jpg|\.jpeg|\.png|\.gif)$/i;
    if (!allowedExtensions.exec(filePath) || (peso.size > 20097152)) {
        $('#myModal').modal('show');
        alert('Please upload file having extensions .jpeg/.jpg/.png/.gif only.');
        fileInput.value = '';
        return false;
    } else {

   // if (oFile.size > 20480) // {alert("File size must under 2mb!"); return; }
        
        //Image preview
        if (fileInput.files && fileInput.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
            document.getElementById('imagePreview').innerHTML = '<img  src="' + e.target.result + '"/>';

            };
            reader.readAsDataURL(fileInput.files[0]);
        }
    }
}


//validacion audio
function fileValidationMP3() {
    var fileInput = document.getElementById('AudioF');
     var peso = fileInput.files[0];
    var filePath = fileInput.value;
    var allowedExtensions = /(\.mp3|\.mpeg|\.ogg|\.wav)$/i;
    if (!allowedExtensions.exec(filePath) || (peso.size > 20097152)) {
        $('#myModal').modal('show');
    
        fileInput.value = '';
        return false;
    } else {


        //Image preview
        if (fileInput.files && fileInput.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                document.getElementById('AudioPreview').innerHTML = '<source src="' + e.target.result + '"/>';
            };
            reader.readAsDataURL(fileInput.files[0]);
        }
    }
}












$(document).ready(function () {

    $('btn-block').click(function () {
        var url = $('#myModal').data('url');
        $.get(url, function (data)
        {
            $('#myModal').html(data);
            $('#myModal').modal('show');
        });

    });

 });