/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function (){
    init();
});

function init(){
    $('#modalcategorias').on('show.bs.modal',function(){
        $('#triggercate').trigger('focus');
    });
}

