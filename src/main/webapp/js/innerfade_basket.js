$(document).ready(function () {
    // innerfade 플러그인을 적용합니다.
    $('#inner-fade').innerfade({
        animationtype: 'fade',
        speed: 1500,
        timeout: 5000,
        type: 'sequence',
        containerheight: '100%'
    });
});
