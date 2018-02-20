<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<style>
.terms_box {
	position: relative;
	overflow: auto;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	height: 88px;
	margin-top: 11px;
	padding: 8px 10px;
	border: 1px solid #f0f0f0;
	background: #f7f7f7;
	scrollbar-base-color: #d9d9d9;
	scrollbar-3dlight-color: #d9d9d9;
	scrollbar-darkshadow-color: #d9d9d9;
	scrollbar-face-color: #d9d9d9;
	scrollbar-highlight-color: #d9d9d9;
	scrollbar-shadow-color: #d9d9d9;
	scrollbar-track-color: #f2f2f2;
	-webkit-overflow-scrolling: touch
}

.article {
	font-size: 12px;
	line-height: 16px;
	color: #666
}

.input_chk input {
	position: absolute;
	z-index: 9;
	top: 50%;
	right: 1px;
	width: 22px;
	height: 22px;
	margin-top: -11px;
	opacity: 0;
	outline: 0;
	-webkit-appearance: none
}

.input_chk label {
	font-size: 14px;
	font-weight: 700;
	line-height: 24px;
	position: absolute;
	z-index: 10;
	top: 0;
	left: 0;
	display: block;
	width: 100%;
	height: 24px;
	cursor: pointer;
	color: #333;
	background:
		url(https://static.nid.naver.com/images/ui/join/m_ico_check_off_2x_20170904.png)
		100% 50% no-repeat;
	-webkit-background-size: 24px 24px;
	background-size: 24px 24px
}

html[lang=en] .input_chk label, html[lang=zh-Hans] .input_chk label,
	html[lang=zh-Hant] .input_chk label {
	font-family: Arial
}

.input_chk input:checked+label {
	background:
		url(https://static.nid.naver.com/images/ui/join/m_ico_check_on_2x_20170904.png)
		100% 50% no-repeat;
	-webkit-background-size: 24px 24px;
	background-size: 24px 24px
}

.input_chk label.on {
	background:
		url(https://static.nid.naver.com/images/ui/join/m_ico_check_on_2x_20170904.png)
		100% 50% no-repeat;
	-webkit-background-size: 24px 24px;
	background-size: 24px 24px
}

.input_chk label .terms_choice {
	font-size: 12px;
	font-weight: 400;
	color: #08a600
}

.input_chk label .terms_no {
	color: #8e8e8e
}

.input_chk label .terms_tit_link {
	color: #333;
	text-decoration: underline
}

.section table {
	margin: 0;
	border-collapse: collapse;
	text-align: center;
	color: #333;
	border: 0
}

.section table td, .section table th {
	padding: 5px 0;
	border: 1px solid #e5e5e5
}

.section ol {
	margin-bottom: 10px
}

ul.terms_list {
	list-style: circle
}

ul.terms_list li {
	padding-left: 10px;
	list-style-type: circle
}

.terms_bx_list {
	display: block;
	padding-bottom: 8px
}

.terms_chk_all {
	display: block;
	padding: 15px
}

.terms_chk_all .input_chk {
	height: 58px
}

.terms_chk_all .input_chk label {
	line-height: 20px;
	top: -1px;
	display: table;
	height: 58px
}

.terms_chk_all .input_chk label span {
	display: table-cell;
	vertical-align: middle
}

.terms_p .error {
	line-height: 16px;
	margin: -3px 15px 11px
}

.btn_group {
	display: table;
	margin: 0 0 19px;
	text-align: center;
	*display: block;
	*overflow: hidden;
	*margin: 0 auto 19px
}

.btn_group a {
	display: table-cell;
	width: 50%;
	height: 59px;
	border: solid 1px #1eb702;
	background: #1fbc02
		url(https://static.nid.naver.com/images/join/pc/btn_join2_2x.gif) 50%
		0 no-repeat;
	-webkit-background-size: 108px auto;
	background-size: 108px auto;
	*display: block;
	*float: left;
	*width: 224px
}

.btn_group a.btn_agree {
	background-position: 50% -253px
}

.btn_group a.btn_cancel {
	border: solid 1px #e6e7e7;
	background-color: #fff;
	background-position: 50% -315px
}

html[lang=en] .btn_group a.btn_agree {
	background-position: 50% -378px
}

html[lang=en] .btn_group a.btn_cancel {
	background-position: 50% -440px
}

.btn_group .btn_cell {
	display: table-cell;
	width: 8px;
	color: #f5f6f7;
	*display: block;
	*float: left
}

.group_join {
	margin: 20px 0 53px
}

html[lang=en] .group_join {
	margin: 18px 0 72px
}

@
-moz-document url-prefix (){ .
	btn_group a{height: 48px
}

}
.tab_m {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	height: 43px;
	margin-bottom: 10px;
	border: solid 1px #d5d6d7
}

.tab_m li {
	float: left;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	width: 50%;
	border-right: solid 1px #d5d6d7;
	*width: 228px
}

.tab_m li+li {
	border: none
}

.tab_m li a {
	font-size: 12px;
	font-size: 15px;
	font-weight: 700;
	line-height: 41px;
	display: block;
	width: 100%;
	height: 41px;
	text-align: center;
	text-decoration: none;
	color: #777;
	background: #eaebec;
	*height: 43px
}

.tab_m li a:hover, .tab_m li a:visited {
	text-decoration: none;
	color: #777
}

.tab_m li a.on {
	font-weight: 700;
	margin: -1px;
	color: #fff;
	border: solid 1px #7e7e7f;
	background: #8b8b8c
}

.join_row_tb {
	display: table;
	width: 100%;
	*display: block
}

.join_row_tb .join_row {
	display: table-cell;
	width: 50%;
	table-layout: fixed;
	*display: block;
	*float: left;
	*width: 206px
}

.join_row_tb .join_sex {
	border-top: 1px solid #f0f0f0;
	border-right: solid 1px #f0f0f0;
	*width: 205px
}

.join_ipin_certify {
	position: relative
}

.ipin_certify_txt {
	padding: 0 120px 0 1px
}

.ipin_certify_btn {
	position: absolute;
	top: 8px;
	right: 15px;
	width: 114px
}

.parent_privacy_txt {
	line-height: 18px;
	padding-top: 1px;
	color: #666
}

.parent_privacy {
	margin: 8px 0 22px
}

.parent_privacy {
	text-align: center
}

.parent_privacy .parent_privacy_title {
	font-size: 14px;
	font-weight: 700;
	line-height: 24px;
	position: relative;
	top: -6px;
	display: inline-block;
	color: #666
}

.parent_privacy .input_chk {
	display: inline-block;
	width: 24px
}

.parent_privacy .input_chk span {
	display: block;
	text-indent: -999em
}

.parent_privacy .input_chk input {
	top: 0;
	margin: 0
}

.parent_privacy .input_chk label {
	width: 24px;
	background:
		url(https://static.nid.naver.com/images/ui/join/m_ico_check_off_2x_20170904.png)
		50% 50% no-repeat;
	-webkit-background-size: 24px 24px;
	background-size: 24px 24px
}

.parent_privacy .input_chk label.on {
	background:
		url(https://static.nid.naver.com/images/ui/join/m_ico_check_on_2x_20170904.png)
		50% 50% no-repeat;
	-webkit-background-size: 24px 24px;
	background-size: 24px 24px
}

.parent_privacy input:checked+label {
	background:
		url(https://static.nid.naver.com/images/ui/join/m_ico_check_on_2x_20170904.png)
		50% 50% no-repeat;
	-webkit-background-size: 24px 24px;
	background-size: 24px 24px
}

.parent_privacy .error {
	text-align: center
}

.join_minor .join_com, .join_minor .sex_local {
	padding-top: 8px;
	padding-bottom: 8px
}

.join_minor .join_local {
	float: left;
	width: 110px
}

.join_minor .join_local+.cell {
	float: left;
	height: 33px;
	padding-right: 13px;
	background-position: -94px -573px
}

.join_minor .join_sex {
	padding: 0 3px 0 0
}

.join_minor .join_sex .sex {
	margin-right: 0
}

.join_minor .join_mobile .country_code {
	left: 16px;
	width: 110px
}

.join_minor .join_com .sex {
	float: right;
	margin-right: 4px
}

.join_minor .int_mobile_certify {
	margin-left: 2px
}

.jender {
	position: relative;
	z-index: 10;
	display: block;
	float: left;
	width: 49.8%;
	height: 31px;
	border-right: solid 1px #dcdcdc
}

.jender+.jender {
	border: none
}

.jender input {
	position: absolute;
	z-index: 9;
	top: 0;
	left: 0;
	width: 100%;
	height: 31px
}

.jender label {
	line-height: 32px;
	position: absolute;
	z-index: 10;
	top: 0;
	left: 0;
	display: block;
	width: 100%;
	height: 31px;
	cursor: pointer;
	text-align: center;
	color: #8e8e8e;
	background: #fff
}

.jender input:checked+label {
	z-index: 100;
	margin: -1px;
	color: #08a600;
	border: solid 1px #08a600
}

.jender label.on {
	z-index: 100;
	margin: -1px;
	color: #08a600;
	border: solid 1px #08a600
}

html[lang=en] .jender, html[lang=en] .jender input, html[lang=en] .jender label,
	html[lang=zh-Hans] .jender, html[lang=zh-Hans] .jender input, html[lang=zh-Hans] .jender label,
	html[lang=zh-Hant] .jender, html[lang=zh-Hant] .jender input, html[lang=zh-Hant] .jender label
	{
	font-size: 15px;
	color: #8e8e8e
}

html[lang=en] .jender label.on, html[lang=zh-Hans] .jender label.on,
	html[lang=zh-Hant] .jender label.on {
	color: #08a600
}

@media only screen and (min-width:1024px) {
	#container, #header {
		max-width: 768px;
		margin: 0 auto !important
	}
	.join_content {
		width: 460px;
		margin: 0 auto
	}
	#header .lang {
		right: 10px
	}
	.ipin_certify_txt {
		line-height: 27px
	}
}

@media screen and (min-width:460px) {
	#container, #header {
		margin: 0 10px
	}
	.join_content {
		width: 460px;
		margin: 0 auto
	}
	.join_mobile .int_mobile {
		width: 193px
	}
	.ipin_certify_txt {
		line-height: 27px
	}
}

.join_success h3 {
	width: 339px;
	height: 68px;
	margin: 110px auto 36px;
	text-indent: -999em;
	background:
		url(https://static.nid.naver.com/images/join/pc/img_end_2x.gif)
		no-repeat;
	-webkit-background-size: 341px 242px;
	background-size: 341px 242px
}

.join_success p {
	font-size: 14px;
	font-weight: 700;
	line-height: 23px;
	text-align: center;
	color: #333
}

.join_success p em {
	color: #2cae0c
}

.join_success p.join_success_txt2 {
	font-weight: 400;
	margin: 20px 0 123px;
	color: #666
}

.join_success a {
	text-decoration: underline;
	color: #666
}

.join_success a:hover, .join_success a:visited {
	text-decoration: underline;
	color: #666
}

.join_success .btn_join {
	margin-bottom: 78px
}

html[lang=en] .join_success h3 {
	margin: 128px auto 34px;
	background-position: 0 -90px
}

html[lang=en] .join_success p.join_success_txt {
	display: block;
	width: 341px;
	height: 50px;
	margin: 0 auto 192px;
	text-indent: -999em;
	background:
		url(https://static.nid.naver.com/images/join/pc/img_end_2x.gif) 0
		-192px no-repeat;
	-webkit-background-size: 341px 242px;
	background-size: 341px 242px
}

html[lang=en] .join_success .btn_join, html[lang=zh-Hans] .join_success .btn_join,
	html[lang=zh-Hant] .join_success .btn_join {
	margin-bottom: 76px
}

html[lang=zh-Hans] .btn_group a, html[lang=zh-Hans] .btn_join input {
	background: #1fbc02
		url(https://static.nid.naver.com/images/join/pc/btn_join2_2x_g.gif)
		50% -1px no-repeat;
	background-size: 75px auto
}

html[lang=zh-Hant] .btn_group a, html[lang=zh-Hant] .btn_join input {
	background: #1fbc02
		url(https://static.nid.naver.com/images/join/pc/btn_join2_2x_b.gif)
		50% -1px no-repeat;
	background-size: 75px auto
}

html[lang=zh-Hans] .btn_group a.btn_agree, html[lang=zh-Hant] .btn_group a.btn_agree
	{
	background-position: 50% -126px
}

html[lang=zh-Hans] .btn_group a.btn_cancel, html[lang=zh-Hant] .btn_group a.btn_cancel
	{
	border: solid 1px #e6e7e7;
	background-color: #fff;
	background-position: 50% -190px
}

html[lang=zh-Hans] .btn_join input.int_home, html[lang=zh-Hant] .btn_join input.int_home
	{
	background-position: 50% -63px
}

html[lang=zh-Hans] .ps_box {
	background: #fff
		url(https://static.nid.naver.com/images/ui/join/t_ico_join3_2x_g_20170906.png)
		100% 0 no-repeat;
	background-size: 97px auto
}

html[lang=zh-Hant] .ps_box {
	background: #fff
		url(https://static.nid.naver.com/images/ui/join/t_ico_join3_2x_b_20170906.png)
		100% 0 no-repeat;
	background-size: 97px auto
}

html[lang=zh-Hans] .ps_box.int_id, html[lang=zh-Hant]
         .ps_box.int_id {
	background-position: 100% -57px
}

html[lang=zh-Hans]
          .ps_box.int_pass, html[lang=zh-Hant]
           .ps_box.int_pass {
	background-position: 100% -476px
}

html[lang=zh-Hans]
            .ps_box.int_pass_step1, html[lang=zh-Hant]
             .ps_box.int_pass_step1 {
	background-position: 100% -126px
}

html[lang=zh-Hans] .ps_box.int_pass_step2, html[lang=zh-Hant]
             .ps_box.int_pass_step2 {
	background-position: 100% -196px
}

html[lang=zh-Hans] .ps_box.int_pass_step3, html[lang=zh-Hant]
             .ps_box.int_pass_step3 {
	background-position: 100% -266px
}

html[lang=zh-Hans]
             .ps_box.int_pass_step4, html[lang=zh-Hant]
              .ps_box.int_pass_step4 {
	background-position: 100% -336px
}

html[lang=zh-Hans]
               .ps_box.int_pass_check, html[lang=zh-Hant]
                .ps_box.int_pass_check {
	background-position: 100% -525px
}

html[lang=zh-Hans]
                 .ps_box.int_pass_check2, html[lang=zh-Hant]
                  .ps_box.int_pass_check2 {
	background-position: 100% -406px
}

html[lang=zh-Hans]
                   .join_success h3, html[lang=zh-Hans]
                    .join_success p.join_success_txt {
	width: 360px;
	height: 78px;
	text-indent: -999em;
	background:
		url(https://static.nid.naver.com/images/join/pc/img_end_2x_g.gif)
		no-repeat;
	background-size: 360px auto
}

html[lang=zh-Hans]
                     .join_success h3 {
	background-position: 0 -1px
}

html[lang=zh-Hans]
                      .join_success p.join_success_txt {
	background-position: 0 -110px
}

html[lang=zh-Hant]
                       .join_success h3, html[lang=zh-Hant]
                        .join_success p.join_success_txt {
	width: 360px;
	height: 78px;
	text-indent: -999em;
	background:
		url(https://static.nid.naver.com/images/join/pc/img_end_2x_b.gif)
		no-repeat;
	background-size: 360px auto
}

html[lang=zh-Hant]
                         .join_success h3 {
	background-position: 0 1px
}

html[lang=zh-Hant]
                          .join_success p.join_success_txt {
	background-position: 0 -109px
}

.com .jender, .com .jender input, .com .jender label {
	width: 99px
}

.com .jender+.jender {
	border-right: solid 1px #dcdcdc
}

.com .jender+.jender+.jender {
	border: none
}

.row_group .btn_help {
	position: relative;
	top: 6px;
	display: inline-block;
	width: 20px;
	height: 21px;
	margin-left: 4px;
	text-indent: -999em;
	background-position: -2px -24px
}

.ly_dm {
	position: absolute;
	z-index: 10000;
	top: 510px;
	left: 0;
	width: 100%;
	height: 100%
}

.newsagency_tb {
	position: relative;
	width: 300px;
	margin: 0 auto;
	padding-top: 40px
}

.tbl_mobile {
	width: 100%;
	padding: 0;
	border-spacing: 0;
	border-collapse: separate;
	border: solid 1px #888;
	*border-collapse: collapse
}

.tbl_mobile th {
	font-weight: 400;
	padding: 9px 10px 7px;
	color: #333;
	background: #f7f7f7
}

.tbl_mobile td {
	padding: 8px 10px 7px;
	word-wrap: break-word;
	color: #666;
	border: solid #dadada;
	border-width: 1px 1px 0 0;
	background: #fff
}

.tbl_mobile tbody th {
	font-size: 11px;
	border-top: solid 1px #dadada
}

.tbl_mobile tbody th a.select_link {
	text-decoration: underline;
	color: #333
}

.btn_closed {
	position: absolute;
	display: block;
	text-indent: -999em
}

.ly_dm .btn_closed {
	top: 9px;
	right: 0;
	width: 21px;
	height: 21px;
	background-position: -1px -1px
}

.input_row {
	position: relative;
	height: 29px;
	margin: 0 0 10px;
	padding: 10px 35px 10px 15px;
	border: solid 1px #dadada;
	background: #fff
}

.input_row.focus {
	border: solid 1px #20bc01
}

.input_box {
	display: block;
	overflow: hidden
}

.input_box .lbl {
	z-index: 8;
	top: 16px;
	left: 15px
}

.input_box .int {
	font-size: 15px;
	font-weight: 700;
	line-height: 16px;
	position: relative;
	z-index: 9;
	width: 100%;
	height: 16px;
	padding: 7px 0 6px;
	color: #000;
	border: none;
	background: #fff;
	-webkit-appearance: none
}

.audio_link {
	display: none
}

.audio_txt {
	font-size: 12px;
	display: block;
	color: #8e8e8e
}

.captcha {
	padding: 9px 0 0
}

html[lang=en] .captcha {
	padding: 8px 0 0
}

.captcha .captcha_txt {
	font-size: 13px;
	line-height: 16px;
	padding-bottom: 8px;
	color: #333
}

.captcha_box {
	position: relative;
	display: block;
	margin-bottom: 10px;
	border: 1px solid #d9d9d9;
	background: #fff
}

.captcha_box>a, .captcha_box>button {
	font-size: 15px;
	position: absolute;
	top: 0;
	right: 0;
	display: block;
	width: 157px;
	height: 49px;
	text-decoration: none;
	color: #8e8e8e;
	border: 0;
	background-color: #fff
}

.captcha_box>a.btn_img, .captcha_box>a.btn_sound {
	top: 49px;
	border-top: 1px solid #d9d9d9
}

.captcha_box>a span, .captcha_box>button span {
	line-height: 15px;
	display: block;
	height: 15px;
	margin: 17px 0 0 12px;
	padding-left: 22px
}

.captcha_box>a.btn_refresh span, .captcha_box>button.btn_refresh span {
	margin-top: 0;
	text-align: left;
	background-position: -445px -48px
}

.captcha_box>a.btn_sound span {
	background-position: -445px -69px
}

.captcha_box>a.btn_img span {
	background-position: -445px -90px
}

.captcha_img .speaker {
	display: block;
	width: 27px;
	height: 40px;
	margin: 0 auto;
	padding: 18px 0 9px;
	background-position: -411px -30px
}

.captcha_img {
	display: block;
	width: auto;
	height: 99px;
	margin-right: 157px;
	text-align: center;
	border-right: 1px solid #d9d9d9
}

.captcha_img a {
	text-decoration: none;
	color: #8e8e8e
}

.capcha_sound .captcha_img {
	margin: -1px 157px -1px -1px;
	border: solid 1px #08a600
}

::-webkit-input-placeholder {
	color: #8e8e8e
}

::-moz-placeholder {
	color: #4a4a4a
}

input.int:-ms-input-placeholder {
	color: #8e8e8e
}

input:-moz-placeholder {
	color: #8e8e8e
}

.parent_privacy_txt3 {
	font-size: 12px;
	line-height: 16px;
	padding: 0 0 27px;
	color: #666
}

.agree_check_wrap {
	overflow: hidden;
	padding-bottom: 30px
}

.multi_line {
	padding-bottom: 25px
}

.tab_m+.agree_check_wrap {
	padding-top: 20px
}

.agree_check_wrap .input_check_big {
	margin-top: 20px
}

.agree_check_wrap .input_check_big:first-child {
	margin: 0
}

.step_check_group {
	overflow: hidden
}

.agree_check_wrap .input_check_big+.step_check_group {
	margin-top: 20px
}

.small_check_box {
	overflow: hidden;
	margin: 4px 1px 0 34px
}

.input_check_big {
	position: relative;
	display: block;
	overflow: hidden;
	margin-top: 10px
}

.input_check_big input {
	position: absolute;
	z-index: -1;
	top: 50%;
	left: 0;
	width: 20px;
	height: 20px;
	margin-top: -10px
}

:root .input_check_big input {
	left: -999px
}

.input_check_big label {
	font-size: 12px;
	line-height: 24px;
	display: inline-block;
	padding-left: 33px;
	cursor: pointer;
	color: #333;
	background: 0 0;
	-webkit-background-size: 24px 24px;
	background-size: 24px 24px
}

:root .input_check_big label {
	background:
		url(https://static.nid.naver.com/images/ui/join/m_ico_check_off2_2x_20170905.png)
		0 50% no-repeat;
	-webkit-background-size: 24px 24px;
	background-size: 24px 24px
}

.input_check_big label.on {
	background: 0 0;
	-webkit-background-size: 24px 24px;
	background-size: 24px 24px
}

:root .input_check_big label.on {
	background:
		url(https://static.nid.naver.com/images/ui/join/m_ico_check_on2_2x_20170905.png)
		0 50% no-repeat;
	-webkit-background-size: 24px 24px;
	background-size: 24px 24px
}

.input_check_big label span {
	line-height: 15px;
	display: inline-block;
	vertical-align: middle
}

.input_check_big_type02 {
	position: relative;
	display: block;
	overflow: hidden
}

.input_check_big_type02 input {
	position: absolute;
	z-index: -1;
	top: 50%;
	left: 0;
	width: 20px;
	height: 20px;
	margin-top: -24px
}

:root .input_check_big_type02 input {
	left: -999px;
	margin-top: -10px
}

.input_check_big_type02 label {
	font-size: 12px;
	line-height: 24px;
	display: inline-block;
	padding: 0 0 0 33px;
	cursor: pointer;
	color: #333;
	background: 0 0;
	-webkit-background-size: 24px 24px;
	background-size: 24px 24px
}

:root .input_check_big_type02 label {
	background:
		url(https://static.nid.naver.com/images/ui/join/m_ico_check_off_2x_20170904.png)
		0 0 no-repeat;
	-webkit-background-size: 24px 24px;
	background-size: 24px 24px
}

.input_check_big_type02 label.on {
	background: 0 0;
	-webkit-background-size: 24px 24px;
	background-size: 24px 24px
}

:root .input_check_big_type02 label.on {
	background:
		url(https://static.nid.naver.com/images/ui/join/m_ico_check_on2_2x_20170905.png)
		0 0 no-repeat;
	-webkit-background-size: 24px 24px;
	background-size: 24px 24px
}

.input_check_big_type02 label span {
	line-height: 19px;
	display: inline-block;
	margin-top: 2px;
	vertical-align: top
}

.input_chk_small {
	position: relative;
	display: block;
	overflow: hidden;
	margin: 10px 0 0 0
}

.input_chk_small input {
	position: absolute;
	z-index: -1;
	top: 2px;
	left: 2px;
	width: 15px;
	height: 15px;
	margin-top: 0
}

:root .input_chk_small input {
	margin-top: -9px
}

.input_chk_small label {
	font-size: 12px;
	line-height: 20px;
	display: inline-block;
	height: 20px;
	padding: 0 0 0 27px;
	cursor: pointer;
	color: #333;
	background-image: none;
	background-repeat: no-repeat;
	background-position: 0 -25px;
	-webkit-background-size: 24px 50px;
	background-size: 24px 50px
}

:root .input_chk_small label {
	background-image:
		url(https://static.nid.naver.com/images/ui/join/m_ico_check2_20170905.png);
	background-repeat: no-repeat
}

.input_chk_small label.on {
	background-image: none;
	background-repeat: no-repeat;
	background-position: 0 0;
	-webkit-background-size: 24px 50px;
	background-size: 24px 50px
}

:root .input_chk_small label.on {
	background-image:
		url(https://static.nid.naver.com/images/ui/join/m_ico_check2_20170905.png);
	background-repeat: no-repeat
}

.input_chk_small label span {
	line-height: 18px;
	display: inline-block
}

.agree_check_wrap .btn_view {
	font-size: 12px;
	line-height: 20px;
	position: absolute;
	z-index: 11;
	top: 0;
	right: 19px;
	margin-left: 10px;
	text-decoration: underline;
	color: #8e8e8e
}

.agree_check_wrap .input_check_big .btn_view {
	top: 2px
}

.step_check_group+.input_check_big {
	margin-bottom: 0
}

@media all and (min-width:640px) {
	.input_chk_small {
		float: left;
		width: 50%
	}
}

.pop_content {
	position: relative;
	width: 100%;
	min-height: 100%;
	background-color: #fff
}

.header_area {
	overflow: hidden;
	height: 45px
}

.privacy_title {
	font-size: 18px;
	font-weight: 700;
	line-height: 45px;
	text-align: center;
	color: #fff;
	background-color: #01c73c
}

.content_area {
	max-width: 460px;
	margin: 0 auto;
	padding: 28px 10px 162px;
	background-color: #fff
}

.tab_menu {
	overflow: hidden;
	height: 40px
}

.tab_menu li {
	float: left;
	width: 33%;
	margin-left: -1px
}

.tab_menu li a {
	font-size: 14px;
	line-height: 38px;
	display: block;
	text-align: center;
	text-decoration: none;
	color: #8e8e8e;
	border: 1px solid #dcdcdc;
	background-color: #eaebed
}

.tab_menu li.on {
	position: relative;
	width: 34%;
	margin: 0 -1px
}

.tab_menu li.on a {
	color: #fff;
	border: 1px solid #7e7e7e;
	background-color: #8b8b8d
}

.tab_menu li:first-child {
	margin-left: 0
}

.agree_content {
	overflow: hidden;
	padding: 9px 0 21px 14px;
	border-bottom: 1px solid #e5e5e5
}

.agree_text {
	line-height: 22px;
	overflow-y: auto;
	height: 258px;
	padding: 0 14px 5px 0;
	color: #666;
	-webkit-overflow-scrolling: touch
}

.agree_text pre {
	white-space: pre-wrap;
	word-wrap: break-word;
	word-break: break-all
}

@media all and (min-width:480px) and (max-width:640px) {
	.agree_text {
		height: 100px
	}
}

.btn_wrap {
	position: absolute;
	right: 10px;
	bottom: 96px;
	left: 10px
}

.btn_wrap button {
	font-size: 17px;
	font-weight: 400;
	line-height: 51px;
	display: block;
	width: 100%;
	max-width: 460px;
	height: 51px;
	margin: 0 auto;
	text-align: center;
	color: #fff;
	border: none;
	background-color: #1fbc02
}

.footer_area {
	position: absolute;
	bottom: 0;
	left: 0;
	width: 100%;
	height: 53px;
	text-align: center;
	border-top: 1px solid #cdccd1;
	background-color: #f4f4f4
}

.footer_area .company {
	font-size: 12px;
	line-height: 53px;
	color: #9f9f9f
}

.row_group+.btn_primary {
	margin-top: 20px
}

.btn_area {
	overflow: hidden;
	margin-top: 30px
}

.btn_area.double {
	margin: 30px -5px 0
}

.btn_area>span {
	display: block;
	float: left;
	width: 50%
}

.btn_area>span .btn_type {
	width: auto;
	margin: 0 5px
}

.btn_type {
	font-size: 20px;
	font-weight: 700;
	line-height: 61px;
	display: block;
	box-sizing: border-box;
	width: 100%;
	height: 61px;
	padding-top: 1px;
	cursor: pointer;
	text-align: center
}

.btn_type:active, .btn_type:focus, .btn_type:hover {
	text-decoration: none
}

.btn_type+.btn_type {
	margin-top: 10px
}

.btn_default {
	color: #333;
	border: 1px solid #e7e7e7;
	background-color: #fff
}

.btn_primary {
	color: #fff;
	border: 1px solid #1fbc02;
	background-color: #1fbc02
}

html[lang=en] .btn_type, html[lang=zh-Hans] .btn_type, html[lang=zh-Hant] .btn_type
	{
	font-family: Arial, Helvetica, sans-serif;
	font-weight: 400;
	padding-top: 0
}

html[lang=en] .btn_primary span {
	position: relative;
	top: -2px;
	display: inline-block;
	vertical-align: top
}

@media only screen and (max-device-width:1024px) and
		(-webkit-min-device-pixel-ratio:1.5) , ( min--moz-device-pixel-ratio
		:1.5) , ( -o-min-device-pixel-ratio :3/2) , ( min-device-pixel-ratio
	:1.5) {
	.btn_type {
		font-weight: 400
	}
	html[lang=en] .btn_type, html[lang=zh-Hans] .btn_type, html[lang=zh-Hant] .btn_type
		{
		font-size: 21px
	}
}

.article, .policy_summary {
	font-size: 12px;
	line-height: 16px;
	color: #666
}

.article {
	margin-top: 10px
}

.article:first-child {
	margin-top: 0
}

.article .article__title, .clause .clause__title, .paragraph .paragraph__title
	{
	font-size: 12px;
	font-weight: 700;
	line-height: 16px
}

.clause .clause__title {
	margin-top: 10px
}

.terms_necessary {
	font-size: 12px;
	font-weight: 400;
	display: inline-block;
	vertical-align: top;
	color: #08a600
}

.terms_choice {
	color: #8e8e8e
}

.ps_box input[type=password] {
	font-size: 14px
}

.ps_box input::-webkit-input-placeholder {
	font-size: 15px !important
}

.ps_box input::-moz-placeholder {
	font-size: 15px !important
}

.ps_box input:-ms-input-placeholder {
	font-size: 15px !important
}

.agree_button {
	width: 100px;
	height: 50px;
}

body .container {
	position: relative;
	overflow: hidden;
	width: 800px;
	height: 600px;
	margin: 80px auto 0;
	background-color: #ffffff;
	-moz-box-shadow: rgba(0, 0, 0, 0.1) 0px 10px 30px;
	-webkit-box-shadow: rgba(0, 0, 0, 0.1) 0px 10px 30px;
	box-shadow: rgba(0, 0, 0, 0.1) 0px 10px 30px;
}

body .container .half {
	padding: 58px 40px 0;
}

body .container .submit {
	font-size: 12px;
	line-height: 42px;
	display: block;
	width: 48%;
	height: 42px;
	cursor: pointer;
	vertical-align: middle;
	letter-spacing: 2px;
	text-transform: uppercase;
	color: #263238;
	border: 1px solid #263238;
	background: transparent;
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	float: left;
	margin-right: 4%;
}

body .container .submit:hover {
	background-color: #263238;
	color: #ffffff;
	-moz-transition: all 0.2s;
	-o-transition: all 0.2s;
	-webkit-transition: all 0.2s;
	transition: all 0.2s;
}

body .container .cancel {
	font-size: 12px;
	line-height: 42px;
	display: block;
	width: 48%;
	height: 42px;
	cursor: pointer;
	vertical-align: middle;
	letter-spacing: 2px;
	text-transform: uppercase;
	color: #263238;
	border: 1px solid #263238;
	background: transparent;
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	float: left;
}

body .container .cancel:hover {
	background-color: #263238;
	color: #ffffff;
	-moz-transition: all 0.2s;
	-o-transition: all 0.2s;
	-webkit-transition: all 0.2s;
	transition: all 0.2s;
}

body .container h1 {
	font-size: 18px;
	font-weight: 700;
	margin-bottom: 23px;
	text-align: center;
	text-indent: 6px;
	letter-spacing: 7px;
	text-transform: uppercase;
	color: #263238;
}

body .container .tabs {
	width: 100%;
	margin-bottom: 29px;
	border-bottom: 1px solid #d9d9d9;
}
</style>
<script type="text/javascript">
	function CheckForm(Join) {

		//체크박스 체크여부 확인 [하나]
		var chk1 = document.agreeform.check1.checked;
		var chk2 = document.agreeform.check2.checked;

		if (!chk1) {
			alert('전체 약관에 동의해 주세요');
			return false;
		}
		if (!chk2) {
			alert('전체 약관에 동의해 주세요');
			return false;
		}
	}
</script>



<title>BalPoom</title>
</head>
<body>
	<section class="container"> <article class="half">
	<form method="post" action="registerForm.jsp" onsubmit="return CheckForm(this)" name="agreeform">
		<h1>BALPOOM</h1>
		<div class="tabs"></div>
		<br> <input type="checkbox" name='check1' id='check1'> <label
			id="termsServiceLb" for="termsService"> 발품 이용약관 동의<span
			class="terms_choice">(필수)</span></label>
		<div class="terms_box">
			<div class="article">
				<h3 class="article__title">제 1 조 (목적)</h3>
				<p class="article__text">이 약관은 BalPoom(이하 발품) 주식회사 ("회사" 또는
					"발품")가 제공하는 발품 및 발품 관련 제반 서비스의 이용과 관련하여 회사와 회원과의 권리, 의무 및 책임사항, 기타
					필요한 사항을 규정함을 목적으로 합니다.</p>
			</div>
			<div class="article">
				<h3 class="article__title">제 2 조 (정의)</h3>
				<p class="article__text">이 약관에서 사용하는 용어의 정의는 다음과 같습니다.</p>
				<ol class="sections">
					<li class="sections__section">①"서비스"라 함은 구현되는 단말기(PC, TV,
						휴대형단말기 등의 각종 유무선 장치를 포함)와 상관없이 "회원"이 이용할 수 있는 발품 및 발품 관련 제반 서비스를
						의미합니다.</li>
					<li class="sections__section">②"회원"이라 함은 회사의 "서비스"에 접속하여 이 약관에
						따라 "회사"와 이용계약을 체결하고 "회사"가 제공하는 "서비스"를 이용하는 고객을 말합니다.</li>
					<li class="sections__section">③"아이디(ID)"라 함은 "회원"의 식별과 "서비스"
						이용을 위하여 "회원"이 정하고 "회사"가 승인하는 문자와 숫자의 조합을 의미합니다.</li>
					<li class="sections__section">④"비밀번호"라 함은 "회원"이 부여 받은 "아이디와
						일치되는 "회원"임을 확인하고 비밀보호를 위해 "회원" 자신이 정한 문자 또는 숫자의 조합을 의미합니다.</li>
					<li class="sections__section">⑤"유료서비스"라 함은 "회사"가 유료로 제공하는 각종
						온라인디지털콘텐츠(각종 정보콘텐츠, VOD, 아이템 기타 유료콘텐츠를 포함) 및 제반 서비스를 의미합니다.</li>
					<li class="sections__section">⑥"포인트"라 함은 서비스의 효율적 이용을 위해 회사가
						임의로 책정 또는 지급, 조정할 수 있는 재산적 가치가 없는 "서비스" 상의 가상 데이터를 의미합니다.</li>
					<li class="sections__section">⑦"게시물"이라 함은 "회원"이 "서비스"를 이용함에 있어
						"서비스상"에 게시한 부호ㆍ문자ㆍ음성ㆍ음향ㆍ화상ㆍ동영상 등의 정보 형태의 글, 사진, 동영상 및 각종 파일과 링크 등을
						의미합니다.</li>
				</ol>
			</div>
			<div class="article">
				<h3 class="article__title">제 3 조 (약관의 게시와 개정)</h3>
				<ol class="sections">
					<li class="sections__section">①"회사"는 이 약관의 내용을 "회원"이 쉽게 알 수
						있도록 서비스 초기 화면에 게시합니다.</li>
					<li class="sections__section">②"회사"는 "약관의규제에관한법률",
						"정보통신망이용촉진및정보보호등에관한법률(이하 "정보통신망법")" 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할
						수 있습니다.</li>
					<li class="sections__section">③"회사"가 약관을 개정할 경우에는 적용일자 및 개정사유를
						명시하여 현행약관과 함께 제1항의 방식에 따라 그 개정약관의 적용일자 30일 전부터 적용일자 전일까지 공지합니다.
						다만, 회원에게 불리한 약관의 개정의 경우에는 공지 외에 일정기간 서비스내 전자우편, 전자쪽지, 로그인시 동의창 등의
						전자적 수단을 통해 따로 명확히 통지하도록 합니다.</li>
					<li class="sections__section">④회사가 전항에 따라 개정약관을 공지 또는 통지하면서
						회원에게 30일 기간 내에 의사표시를 하지 않으면 의사표시가 표명된 것으로 본다는 뜻을 명확하게 공지 또는
						통지하였음에도 회원이 명시적으로 거부의 의사표시를 하지 아니한 경우 회원이 개정약관에 동의한 것으로 봅니다.</li>
					<li class="sections__section">⑤회원이 개정약관의 적용에 동의하지 않는 경우 회사는 개정
						약관의 내용을 적용할 수 없으며, 이 경우 회원은 이용계약을 해지할 수 있습니다. 다만, 기존 약관을 적용할 수 없는
						특별한 사정이 있는 경우에는 회사는 이용계약을 해지할 수 있습니다.</li>
				</ol>
			</div>
			<div class="article">
				<h3 class="article__title">제 4 조 (약관의 해석)</h3>
				<ol class="sections">
					<li class="sections__section">①"회사"는 "유료서비스" 및 개별 서비스에 대해서는
						별도의 이용약관 및 정책(이하 "유료서비스약관 등")을 둘 수 있으며, 해당 내용이 이 약관과 상충할 경우에는
						"유료서비스약관 등"이 우선하여 적용됩니다.</li>
					<li class="sections__section">②이 약관에서 정하지 아니한 사항이나 해석에 대해서는
						"유료서비스약관 등" 및 관계법령 또는 상관례에 따릅니다.</li>
				</ol>
			</div>
			<div class="article">
				<h3 class="article__title">제 5 조 (이용계약 체결)</h3>
				<ol class="sections">
					<li class="sections__section">①이용계약은 "회원"이 되고자 하는 자(이하
						"가입신청자")가 약관의 내용에 대하여 동의를 한 다음 회원가입신청을 하고 "회사"가 이러한 신청에 대하여 승낙함으로써
						체결됩니다.</li>
					<li class="sections__section">②"회사"는 "가입신청자"의 신청에 대하여 "서비스"
						이용을 승낙함을 원칙으로 합니다. 다만, "회사"는 다음 각 호에 해당하는 신청에 대하여는 승낙을 하지 않거나 사후에
						이용계약을 해지할 수 있습니다.
						<ol class="sections">
							<li class="sections__section">1.가입신청자가 이 약관에 의하여 이전에 회원자격을
								상실한 적이 있는 경우, 단 "회사"의 회원 재가입 승낙을 얻은 경우에는 예외로 함.</li>
							<li class="sections__section">2.실명이 아니거나 타인의 명의를 이용한 경우</li>
							<li class="sections__section">3.허위의 정보를 기재하거나, "회사"가 제시하는
								내용을 기재하지 않은 경우</li>
							<li class="sections__section">4.14세 미만 아동이 법정대리인(부모 등)의 동의를
								얻지 아니한 경우</li>
							<li class="sections__section">5.이용자의 귀책사유로 인하여 승인이 불가능하거나 기타
								규정한 제반 사항을 위반하며 신청하는 경우</li>
						</ol>
					</li>
					<li class="sections__section">③제1항에 따른 신청에 있어 "회사"는 "회원"의 종류에
						따라 전문기관을 통한 실명확인 및 본인인증을 요청할 수 있습니다.</li>
					<li class="sections__section">④"회사"는 서비스관련설비의 여유가 없거나, 기술상 또는
						업무상 문제가 있는 경우에는 승낙을 유보할 수 있습니다.</li>
					<li class="sections__section">⑤제2항과 제4항에 따라 회원가입신청의 승낙을 하지
						아니하거나 유보한 경우, "회사"는 원칙적으로 이를 가입신청자에게 알리도록 합니다.</li>
					<li class="sections__section">⑥이용계약의 성립 시기는 "회사"가 가입완료를 신청절차
						상에서 표시한 시점으로 합니다.</li>
					<li class="sections__section">⑦"회사"는 "회원"에 대해 회사정책에 따라 등급별로
						구분하여 이용시간, 이용횟수, 서비스 메뉴 등을 세분하여 이용에 차등을 둘 수 있습니다.</li>
					<li class="sections__section">⑧"회사"는 "회원"에 대하여
						"영화및비디오물의진흥에관한법률" 및 "청소년보호법"등에 따른 등급 및 연령 준수를 위해 이용제한이나 등급별 제한을 할
						수 있습니다.</li>
				</ol>
			</div>
			<div class="article">
				<h3 class="article__title">제 6 조 (회원정보의 변경)</h3>
				<ol class="sections">
					<li class="sections__section">①"회원"은 개인정보관리화면을 통하여 언제든지 본인의
						개인정보를 열람하고 수정할 수 있습니다. 다만, 서비스 관리를 위해 필요한 실명, 주민등록번호, 아이디 등은 수정이
						불가능합니다.</li>
					<li class="sections__section">②"회원"은 회원가입신청 시 기재한 사항이 변경되었을 경우
						온라인으로 수정을 하거나 전자우편 기타 방법으로 "회사"에 대하여 그 변경사항을 알려야 합니다.</li>
					<li class="sections__section">③제2항의 변경사항을 "회사"에 알리지 않아 발생한
						불이익에 대하여 "회사"는 책임지지 않습니다.</li>
				</ol>
			</div>
			<div class="article">
				<h3 class="article__title">제 7 조 (개인정보보호 의무)</h3>
				<p class="article__text">"회사"는 "정보통신망법" 등 관계 법령이 정하는 바에 따라 "회원"의
					개인정보를 보호하기 위해 노력합니다. 개인정보의 보호 및 사용에 대해서는 관련법 및 "회사"의 개인정보처리방침이
					적용됩니다. 다만, "회사"의 공식 사이트 이외의 링크된 사이트에서는 "회사"의 개인정보처리방침이 적용되지 않습니다.</p>
			</div>
			<div class="article">
				<h3 class="article__title">제 8 조 ("회원"의 "아이디" 및 "비밀번호"의 관리에 대한
					의무)</h3>
				<ol class="sections">
					<li class="sections__section">①"회원"의 "아이디"와 "비밀번호"에 관한 관리책임은
						"회원"에게 있으며, 이를 제3자가 이용하도록 하여서는 안 됩니다.</li>
					<li class="sections__section">②"회사"는 "회원"의 "아이디"가 개인정보 유출 우려가
						있거나, 반사회적 또는 미풍양속에 어긋나거나 "회사" 및 "회사"의 운영자로 오인한 우려가 있는 경우, 해당
						"아이디"의 이용을 제한할 수 있습니다.</li>
					<li class="sections__section">③"회원"은 "아이디" 및 "비밀번호"가 도용되거나
						제3자가 사용하고 있음을 인지한 경우에는 이를 즉시 "회사"에 통지하고 "회사"의 안내에 따라야 합니다.</li>
					<li class="sections__section">④제3항의 경우에 해당 "회원"이 "회사"에 그 사실을
						통지하지 않거나, 통지한 경우에도 "회사"의 안내에 따르지 않아 발생한 불이익에 대하여 "회사"는 책임지지 않습니다.
					</li>
				</ol>
			</div>
			<div class="article">
				<h3 class="article__title">제 9 조 ("회원"에 대한 통지)</h3>
				<ol class="sections">
					<li class="sections__section">①"회사"가 "회원"에 대한 통지를 하는 경우 이 약관에
						별도 규정이 없는 한 서비스 내 전자우편주소, 전자쪽지 등으로 할 수 있습니다.</li>
					<li class="sections__section">②"회사"는 "회원" 전체에 대한 통지의 경우 7일 이상
						"회사"의 게시판에 게시함으로써 제1항의 통지에 갈음할 수 있습니다.</li>
				</ol>
			</div>
			<div class="article">
				<h3 class="article__title">제 10 조 ("회사"의 의무)</h3>
				<ol class="sections">
					<li class="sections__section">①"회사"는 관련법과 이 약관이 금지하거나 미풍양속에
						반하는 행위를 하지 않으며, 계속적이고 안정적으로 "서비스"를 제공하기 위하여 최선을 다하여 노력합니다.</li>
					<li class="sections__section">②"회사"는 "회원"이 안전하게 "서비스"를 이용할 수
						있도록 개인정보(신용정보 포함)보호를 위해 보안시스템을 갖추어야 하며 개인정보처리방침을 공시하고 준수합니다.</li>
					<li class="sections__section">③"회사"는 서비스이용과 관련하여 "회원"으로부터 제기된
						의견이나 불만이 정당하다고 인정할 경우에는 이를 처리하여야 합니다. "회원"이 제기한 의견이나 불만사항에 대해서는
						게시판을 활용하거나 전자우편 등을 통하여 "회원"에게 처리과정 및 결과를 전달합니다.</li>
				</ol>
			</div>
			<div class="article">
				<h3 class="article__title">제 11 조 ("회원"의 의무)</h3>
				<ol class="sections">
					<li class="sections__section">①"회원"은 다음 행위를 하여서는 안 됩니다.
						<ol class="sections">
							<li class="sections__section">1.신청 또는 변경 시 허위내용의 등록</li>
							<li class="sections__section">2.타인의 정보도용</li>
							<li class="sections__section">3."회사"가 게시한 정보의 변경</li>
							<li class="sections__section">4."회사"가 정한 정보 이외의 정보(컴퓨터 프로그램
								등) 등의 송신 또는 게시</li>
							<li class="sections__section">5."회사"와 기타 제3자의 저작권 등 지적재산권에
								대한 침해</li>
							<li class="sections__section">6."회사" 및 기타 제3자의 명예를 손상시키거나
								업무를 방해하는 행위</li>
							<li class="sections__section">7.외설 또는 폭력적인 메시지, 화상, 음성, 기타
								공서양속에 반하는 정보를 "서비스"에 공개 또는 게시하는 행위</li>
							<li class="sections__section">8.회사의 동의 없이 영리를 목적으로 "서비스"를
								사용하는 행위</li>
							<li class="sections__section">9.기타 불법적이거나 부당한 행위</li>
						</ol>
					</li>
					<li class="sections__section">②"회원"은 관계법, 이 약관의 규정, 이용안내 및
						"서비스"와 관련하여 공지한 주의사항, "회사"가 통지하는 사항 등을 준수하여야 하며, 기타 "회사"의 업무에 방해되는
						행위를 하여서는 안 됩니다.</li>
					<li class="sections__section">③"회원"이 카페, 블로그 서비스를 이용하여 통신판매 또는
						통신판매중개를 업으로 하는 경우 전자상거래 등에서의 소비자보호에 관한 법률에 따른 의무를 준수하여야 하며, 회사는 개별
						서비스 이용약관 및 정책에서 관련 내용을 규정할 수 있습니다.</li>
				</ol>
			</div>
			<div class="article">
				<h3 class="article__title">제 12 조 ("서비스"의 제공 등)</h3>
				<ol class="sections">
					<li class="sections__section">①회사는 회원에게 아래와 같은 서비스를 제공합니다.
						<ol class="sections">
							<li class="sections__section">1.검색 서비스</li>
							<li class="sections__section">2.개방형 서비스(블로그, 카페 등)</li>
							<li class="sections__section">3.게시판형 서비스(지식iN, 뉴스 등)</li>
							<li class="sections__section">4.메일서비스</li>
							<li class="sections__section">5.보안패치, 백신서비스</li>
							<li class="sections__section">6.기타 "회사"가 추가 개발하거나 다른 회사와의
								제휴계약 등을 통해 "회원"에게 제공하는 일체의 서비스</li>
						</ol>
					</li>
					<li class="sections__section">②회사는 "서비스"를 일정범위로 분할하여 각 범위 별로
						이용가능시간을 별도로 지정할 수 있습니다. 다만, 이러한 경우에는 그 내용을 사전에 공지합니다.</li>
					<li class="sections__section">③"서비스"는 연중무휴, 1일 24시간 제공함을 원칙으로
						합니다.</li>
					<li class="sections__section">④"회사"는 컴퓨터 등 정보통신설비의 보수점검, 교체 및
						고장, 통신두절 또는 운영상 상당한 이유가 있는 경우 "서비스"의 제공을 일시적으로 중단할 수 있습니다. 이 경우
						"회사"는 제9조["회원"에 대한 통지]에 정한 방법으로 "회원"에게 통지합니다. 다만, "회사"가 사전에 통지할 수
						없는 부득이한 사유가 있는 경우 사후에 통지할 수 있습니다.</li>
					<li class="sections__section">⑤"회사"는 서비스의 제공에 필요한 경우 정기점검을 실시할
						수 있으며, 정기점검시간은 서비스제공화면에 공지한 바에 따릅니다.</li>
				</ol>
			</div>
			<div class="article">
				<h3 class="article__title">제 13 조 ("서비스"의 변경)</h3>
				<ol class="sections">
					<li class="sections__section">①"회사"는 상당한 이유가 있는 경우에 운영상, 기술상의
						필요에 따라 제공하고 있는 전부 또는 일부 "서비스"를 변경할 수 있습니다.</li>
					<li class="sections__section">②"서비스"의 내용, 이용방법, 이용시간에 대하여 변경이
						있는 경우에는 변경사유, 변경될 서비스의 내용 및 제공일자 등은 그 변경 전에 해당 서비스 초기화면에 게시하여야
						합니다.</li>
					<li class="sections__section">③"회사"는 무료로 제공되는 서비스의 일부 또는 전부를
						회사의 정책 및 운영의 필요상 수정, 중단, 변경할 수 있으며, 이에 대하여 관련법에 특별한 규정이 없는 한
						"회원"에게 별도의 보상을 하지 않습니다.</li>
				</ol>
			</div>
			<div class="article">
				<h3 class="article__title">제 14 조 (정보의 제공 및 광고의 게재)</h3>
				<ol class="sections">
					<li class="sections__section">①"회사"는 "회원"이 "서비스" 이용 중 필요하다고
						인정되는 다양한 정보를 공지사항이나 전자우편 등의 방법으로 "회원"에게 제공할 수 있습니다. 다만, "회원"은 관련법에
						따른 거래관련 정보 및 고객문의 등에 대한 답변 등을 제외하고는 언제든지 전자우편에 대해서 수신 거절을 할 수
						있습니다.</li>
					<li class="sections__section">②제1항의 정보를 전화 및 모사전송기기에 의하여 전송하려고
						하는 경우에는 "회원"의 사전 동의를 받아서 전송합니다. 다만, "회원"의 거래관련 정보 및 고객문의 등에 대한 회신에
						있어서는 제외됩니다.</li>
					<li class="sections__section">③"회사"는 "서비스"의 운영과 관련하여 서비스 화면,
						홈페이지, 전자우편 등에 광고를 게재할 수 있습니다. 광고가 게재된 전자우편을 수신한 "회원"은 수신거절을 "회사"에게
						할 수 있습니다.</li>
					<li class="sections__section">④"이용자(회원, 비회원 포함)"는 회사가 제공하는
						서비스와 관련하여 게시물 또는 기타 정보를 변경, 수정, 제한하는 등의 조치를 취하지 않습니다.</li>
				</ol>
			</div>
			<div class="article">
				<h3 class="article__title">제 15 조 ("게시물"의 저작권)</h3>
				<ol class="sections">
					<li class="sections__section">①"회원"이 "서비스" 내에 게시한 "게시물"의 저작권은
						해당 게시물의 저작자에게 귀속됩니다.</li>
					<li class="sections__section">②"회원"이 "서비스" 내에 게시하는 "게시물"은 검색결과
						내지 "서비스" 및 관련 프로모션 등에 노출될 수 있으며, 해당 노출을 위해 필요한 범위 내에서는 일부 수정, 복제,
						편집되어 게시될 수 있습니다. 이 경우, 회사는 저작권법 규정을 준수하며, "회원"은 언제든지 고객센터 또는 "서비스"
						내 관리기능을 통해 해당 게시물에 대해 삭제, 검색결과 제외, 비공개 등의 조치를 취할 수 있습니다.</li>
					<li class="sections__section">③"회사"는 제2항 이외의 방법으로 "회원"의 "게시물"을
						이용하고자 하는 경우에는 전화, 팩스, 전자우편 등을 통해 사전에 "회원"의 동의를 얻어야 합니다.</li>
				</ol>
			</div>
			<div class="article">
				<h3 class="article__title">제 16 조 ("게시물"의 관리)</h3>
				<ol class="sections">
					<li class="sections__section">①"회원"의 "게시물"이 "정보통신망법" 및 "저작권법"등
						관련법에 위반되는 내용을 포함하는 경우, 권리자는 관련법이 정한 절차에 따라 해당 "게시물"의 게시중단 및 삭제 등을
						요청할 수 있으며, "회사"는 관련법에 따라 조치를 취하여야 합니다.</li>
					<li class="sections__section">②"회사"는 전항에 따른 권리자의 요청이 없는 경우라도
						권리침해가 인정될 만한 사유가 있거나 기타 회사 정책 및 관련법에 위반되는 경우에는 관련법에 따라 해당 "게시물"에
						대해 임시조치 등을 취할 수 있습니다.</li>
					<li class="sections__section">③본 조에 따른 세부절차는 "정보통신망법" 및
						"저작권법"이 규정한 범위 내에서 "회사"가 정한 "게시중단요청서비스"에 따릅니다.<br /> - 게시중단요청서비스 :
						http://help.naver.com/claim_main.asp
					</li>
				</ol>
			</div>
			<div class="article">
				<h3 class="article__title">제 17 조 (권리의 귀속)</h3>
				<ol class="sections">
					<li class="sections__section">①"서비스"에 대한 저작권 및 지적재산권은 "회사"에
						귀속됩니다. 단, "회원"의 "게시물" 및 제휴계약에 따라 제공된 저작물 등은 제외합니다.</li>
					<li class="sections__section">②"회사"는 서비스와 관련하여 "회원"에게 "회사"가 정한
						이용조건에 따라 계정, "아이디", 콘텐츠, "포인트" 등을 이용할 수 있는 이용권만을 부여하며, "회원"은 이를
						양도, 판매, 담보제공 등의 처분행위를 할 수 없습니다.</li>
				</ol>
			</div>
			<div class="article">
				<h3 class="article__title">제 18 조 (포인트)</h3>
				<p class="article__text">"회사"는 서비스의 효율적 이용 및 운영을 위해 사전 공지 후
					"포인트"의 일부 또는 전부를 조정할 수 있으며, "포인트"는 회사가 정한 기간에 따라 주기적으로 소멸할 수 있습니다.</p>
			</div>
			<div class="article">
				<h3 class="article__title">제 19 조 (계약해제, 해지 등)</h3>
				<ol class="sections">
					<li class="sections__section">①"회원"은 언제든지 서비스초기화면의 고객센터 또는 내
						정보 관리 메뉴 등을 통하여 이용계약 해지 신청을 할 수 있으며, "회사"는 관련법 등이 정하는 바에 따라 이를 즉시
						처리하여야 합니다.</li>
					<li class="sections__section">②"회원"이 계약을 해지할 경우, 관련법 및
						개인정보처리방침에 따라 "회사"가 회원정보를 보유하는 경우를 제외하고는 해지 즉시 "회원"의 모든 데이터는 소멸됩니다.
					</li>
					<li class="sections__section">③"회원"이 계약을 해지하는 경우, "회원"이 작성한
						"게시물" 중 메일, 블로그 등과 같이 본인 계정에 등록된 게시물 일체는 삭제됩니다. 다만, 타인에 의해 담기, 스크랩
						등이 되어 재게시되거나, 공용게시판에 등록된 "게시물" 등은 삭제되지 않으니 사전에 삭제 후 탈퇴하시기 바랍니다.</li>
				</ol>
			</div>
			<div class="article">
				<h3 class="article__title">제 20 조 (이용제한 등)</h3>
				<ol class="sections">
					<li class="sections__section">①"회사"는 "회원"이 이 약관의 의무를 위반하거나
						"서비스"의 정상적인 운영을 방해한 경우, 경고, 일시정지, 영구이용정지 등으로 "서비스" 이용을 단계적으로 제한할 수
						있습니다.</li>
					<li class="sections__section">②"회사"는 전항에도 불구하고, "주민등록법"을 위반한
						명의도용 및 결제도용, "저작권법" 및 "컴퓨터프로그램보호법"을 위반한 불법프로그램의 제공 및 운영방해,
						"정보통신망법"을 위반한 불법통신 및 해킹, 악성프로그램의 배포, 접속권한 초과행위 등과 같이 관련법을 위반한 경우에는
						즉시 영구이용정지를 할 수 있습니다. 본 항에 따른 영구이용정지 시 "서비스" 이용을 통해 획득한 "포인트" 및 기타
						혜택 등도 모두 소멸되며, "회사"는 이에 대해 별도로 보상하지 않습니다.</li>
					<li class="sections__section">③"회사"는 "회원"이 계속해서 3개월 이상 로그인하지
						않는 경우, 회원정보의 보호 및 운영의 효율성을 위해 이용을 제한할 수 있습니다.</li>
					<li class="sections__section">④"회사"는 본 조의 이용제한 범위 내에서 제한의 조건 및
						세부내용은 이용제한정책 및 개별 서비스상의 운영정책에서 정하는 바에 의합니다.</li>
					<li class="sections__section">⑤본 조에 따라 "서비스" 이용을 제한하거나 계약을
						해지하는 경우에는 "회사"는 제9조["회원"에 대한 통지]에 따라 통지합니다.</li>
					<li class="sections__section">⑥"회원"은 본 조에 따른 이용제한 등에 대해 "회사"가
						정한 절차에 따라 이의신청을 할 수 있습니다. 이 때 이의가 정당하다고 "회사"가 인정하는 경우 "회사"는 즉시
						"서비스"의 이용을 재개합니다.</li>
				</ol>
			</div>
			<div class="article">
				<h3 class="article__title">제 21 조 (책임제한)</h3>
				<ol class="sections">
					<li class="sections__section">①"회사"는 천재지변 또는 이에 준하는 불가항력으로 인하여
						"서비스"를 제공할 수 없는 경우에는 "서비스" 제공에 관한 책임이 면제됩니다.</li>
					<li class="sections__section">②"회사"는 "회원"의 귀책사유로 인한 "서비스" 이용의
						장애에 대하여는 책임을 지지 않습니다.</li>
					<li class="sections__section">③"회사"는 "회원"이 "서비스"와 관련하여 게재한 정보,
						자료, 사실의 신뢰도, 정확성 등의 내용에 관하여는 책임을 지지 않습니다.</li>
					<li class="sections__section">④"회사"는 "회원" 간 또는 "회원"과 제3자 상호간에
						"서비스"를 매개로 하여 거래 등을 한 경우에는 책임이 면제됩니다.</li>
					<li class="sections__section">⑤"회사"는 무료로 제공되는 서비스 이용과 관련하여
						관련법에 특별한 규정이 없는 한 책임을 지지 않습니다.</li>
				</ol>
			</div>
			<div class="article">
				<h3 class="article__title">제 22 조 (준거법 및 재판관할)</h3>
				<ol class="sections">
					<li class="sections__section">①"회사"와 "회원"간 제기된 소송은 대한민국법을
						준거법으로 합니다.</li>
					<li class="sections__section">②"회사"와 "회원"간 발생한 분쟁에 관한 소송은 제소
						당시의 "회원"의 주소에 의하고, 주소가 없는 경우 거소를 관할하는 지방법원의 전속관할로 합니다. 단, 제소 당시
						"회원"의 주소 또는 거소가 명확하지 아니한 경우의 관할법원은 민사소송법에 따라 정합니다.</li>
					<li class="sections__section">③해외에 주소나 거소가 있는 '회원' 의 경우 '회사'와
						'회원'간 발생한 분쟁에 관한 소송은 전항에도 불구하고 대한민국 서울중앙지방법원을 관할 법원으로 합니다.</li>
				</ol>
			</div>

		</div>


		</div>
		<br>
		<br> <input type="checkbox" name='check2' id='check2'> <label
			id="termsServiceLb" for="termsService"> 개인정보 수집 및 이용에 대한 안내 <span
			class="terms_choice">(필수)</span></label>
		<div class="terms_box">
			<div class="article">
				<h3 class="article__title">1. 수집하는 개인정보</h3>
				<p class="article__text">이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의
					네이버 서비스를 회원과 동일하게 이용할 수 있습니다. 이용자가 메일, 캘린더, 카페, 블로그 등과 같이 개인화 혹은
					회원제 서비스를 이용하기 위해 회원가입을 할 경우, 네이버는 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.</p>
				<div class="clause">
					<h4 class="clause__title">회원가입 시점에 네이버가 이용자로부터 수집하는 개인정보는 아래와
						같습니다.</h4>
					<ul class="sections">
						<li class="sections__section">- 회원 가입 시에 ‘아이디, 비밀번호, 이름,
							생년월일, 성별, 가입인증 휴대폰번호’를 필수항목으로 수집합니다. 만약 이용자가 입력하는 생년월일이 만14세 미만
							아동일 경우에는 법정대리인 정보(법정대리인의 이름, 생년월일, 성별, 중복가입확인정보(DI), 휴대폰번호)를 추가로
							수집합니다. 그리고 선택항목으로 이메일 주소를 수집합니다.</li>
						<li class="sections__section">- 단체아이디로 회원가입 시 단체아이디, 비밀번호,
							단체이름, 이메일주소, 가입인증 휴대폰번호를 필수항목으로 수집합니다. 그리고 단체 대표자명, 비밀번호 발급용 멤버
							이름 및 이메일주소를 선택항목으로 수집합니다.</li>
					</ul>
					<h4 class="clause__title">서비스 이용 과정에서 이용자로부터 수집하는 개인정보는 아래와
						같습니다.</h4>
					<p class="clause__text">NAVER 내의 개별 서비스 이용, 이벤트 응모 및 경품 신청 과정에서
						해당 서비스의 이용자에 한해 추가 개인정보 수집이 발생할 수 있습니다. 추가로 개인정보를 수집할 경우에는 해당 개인정보
						수집 시점에서 이용자에게 ‘수집하는 개인정보 항목, 개인정보의 수집 및 이용목적, 개인정보의 보관기간’에 대해 안내
						드리고 동의를 받습니다.</p>
					<h4 class="clause__title">서비스 이용 과정에서 IP 주소, 쿠키, 서비스 이용 기록,
						기기정보, 위치정보가 생성되어 수집될 수 있습니다.</h4>
					<p class="clause__text">
						구체적으로 1) 서비스 이용 과정에서 이용자에 관한 정보를 정보통신서비스 제공자가 자동화된 방법으로 생성하여 이를
						저장(수집)하거나, <br> 2) 이용자 기기의 고유한 정보를 원래의 값을 확인하지 못 하도록 안전하게 변환한
						후에 수집하는 경우를 의미합니다.<br> 네이버 위치기반서비스 이용 시 수집·저장되는 위치정보의 이용 등에
						대한 자세한 사항은 ‘네이버 위치정보 이용약관’에서 규정하고 있습니다.
					</p>
				</div>
			</div>
			<div class="article">
				<h3 class="article__title">2. 수집한 개인정보의 이용</h3>
				<p class="article__text">네이버는 회원관리, 서비스 개발・제공 및 향상, 안전한 인터넷 이용환경
					구축 등 아래의 목적으로만 개인정보를 이용합니다.</p>
				<ul class="sections">
					<li class="sections__section">- 회원 가입 의사의 확인, 연령 확인 및 법정대리인 동의
						진행, 이용자 및 법정대리인의 본인 확인, 이용자 식별, 회원탈퇴 의사의 확인 등 회원관리를 위하여 개인정보를
						이용합니다.</li>
					<li class="sections__section">- 콘텐츠 등 기존 서비스 제공(광고 포함)에 더하여,
						인구통계학적 분석, 서비스 방문 및 이용기록의 분석, 개인정보 및 관심에 기반한 이용자간 관계의 형성, 지인 및 관심사
						등에 기반한 맞춤형 서비스 제공 등 신규 서비스 요소의 발굴 및 기존 서비스 개선 등을 위하여 개인정보를 이용합니다.</li>
					<li class="sections__section">- 법령 및 네이버 이용약관을 위반하는 회원에 대한 이용
						제한 조치, 부정 이용 행위를 포함하여 서비스의 원활한 운영에 지장을 주는 행위에 대한 방지 및 제재, 계정도용 및
						부정거래 방지, 약관 개정 등의 고지사항 전달, 분쟁조정을 위한 기록 보존, 민원처리 등 이용자 보호 및 서비스 운영을
						위하여 개인정보를 이용합니다.</li>
					<li class="sections__section">- 유료 서비스 제공에 따르는 본인인증, 구매 및 요금
						결제, 상품 및 서비스의 배송을 위하여 개인정보를 이용합니다.</li>
					<li class="sections__section">- 이벤트 정보 및 참여기회 제공, 광고성 정보 제공 등
						마케팅 및 프로모션 목적으로 개인정보를 이용합니다.</li>
					<li class="sections__section">- 서비스 이용기록과 접속 빈도 분석, 서비스 이용에 대한
						통계, 서비스 분석 및 통계에 따른 맞춤 서비스 제공 및 광고 게재 등에 개인정보를 이용합니다.</li>
					<li class="sections__section">- 보안, 프라이버시, 안전 측면에서 이용자가 안심하고
						이용할 수 있는 서비스 이용환경 구축을 위해 개인정보를 이용합니다.</li>
				</ul>
			</div>
			<div class="article">
				<h3 class="article__title">3. 개인정보의 파기</h3>
				<div class="clause">
					<h4 class="clause__title">회사는 원칙적으로 이용자의 개인정보를 회원 탈퇴 시 지체없이
						파기하고 있습니다.</h4>
					<p class="clause__text">단, 이용자에게 개인정보 보관기간에 대해 별도의 동의를 얻은 경우,
						또는 법령에서 일정 기간 정보보관 의무를 부과하는 경우에는 해당 기간 동안 개인정보를 안전하게 보관합니다.</p>
				</div>
				<div class="clause">
					<h4 class="clause__title">이용자에게 개인정보 보관기간에 대해 별도의 동의를 얻은 경우는
						아래와 같습니다.</h4>
					<p class="clause__text">
						부정가입 및 징계기록 등의 부정이용기록은 부정 가입 및 이용 방지를 위하여 수집 시점으로부터 6개월간 보관하고 파기하고
						있습니다. 부정이용기록 내 개인정보는 가입인증 휴대폰 번호(만 14세 미만 회원의 경우 법정대리인 DI)가 있습니다.<br>
						결제도용, 불법할인대출(일명 '카드깡') 등 관련 법령 및 이용약관을 위반하는 네이버페이의 부정거래기록(아이디, 이름,
						휴대폰번호, 배송지 주소, IP주소, 쿠키, 기기정보)은 부정거래 방지 및 다른 선량한 이용자의 보호, 안전한 거래
						환경 보장을 위하여 수집 시점으로부터 3년간 보관하고 파기합니다.
					</p>
				</div>
				<div class="clause">
					<h4 class="clause__title">전자상거래 등에서의 소비자 보호에 관한 법률, 전자금융거래법,
						통신비밀보호법 등 법령에서 일정기간 정보의 보관을 규정하는 경우는 아래와 같습니다. 네이버는 이 기간 동안 법령의
						규정에 따라 개인정보를 보관하며, 본 정보를 다른 목적으로는 절대 이용하지 않습니다.</h4>
					<ul class="sections">
						<li class="sections__section">- 전자상거래 등에서 소비자 보호에 관한 법률 <br>계약
							또는 청약철회 등에 관한 기록: 5년 보관 <br>대금결제 및 재화 등의 공급에 관한 기록: 5년 보관 <br>소비자의
							불만 또는 분쟁처리에 관한 기록: 3년 보관
						</li>
						<li class="sections__section">- 전자금융거래법 <br>전자금융에 관한 기록:
							5년 보관
						</li>
						<li class="sections__section">- 통신비밀보호법 <br>로그인 기록: 3개월
						</li>
					</ul>
				</div>
			</div>
		</div>
		</li>


		</div>
		<div>
			<br>
			<br>
			<input class="submit" type="submit" value="AGREE"
				onclick="checkForm()"> <a href="javascript:history.back()"><input class="cancel" type="button"
				value="CANCEL"></a>


		</div>
	</form>
	</article> </section>
</body>
</html>