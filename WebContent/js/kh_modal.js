window.onload = function(){

    // 1. 이벤트 등록
    $(".btn_login").on("click", loginHandler);
    $(".btn_close").on("click", closeModalHandler);
}

// 2. 해당 이벤트의 callback 함수 작성
function loginHandler(){
    console.log("loginHandler");
    console.log(this);
    $(".modal").show();
}
function closeModalHandler(){
    $(".modal").hide();
}