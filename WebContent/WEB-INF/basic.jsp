<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="<%= request.getContextPath() %>/js/jquery-3.6.1.js"></script>

<!-- css 작성순서 중요 -->
<link href="./css/reset.css" rel="stylesheet">
<!-- <link href="./css/kh_common.css" rel="stylesheet" type="text/css"> -->
<!-- <link href="./css/kh_font.css" rel="stylesheet" type="text/css"> -->
<!-- <link href="./css/kh_color.css" rel="stylesheet" type="text/css"> -->
<style>
    /* 라이브러리  */
    /* font size 종류별 클래스 */
    /* font family 종류 클래스 */
    /* color 종류 클래스*/
    /* 기본 해상도 */
</style>
<link href="<%= request.getContextPath() %>/css/kh_layout.css" rel="stylesheet" type="text/css">
<link href="<%= request.getContextPath() %>/css/kh_modal.css" rel="stylesheet" type="text/css">
<!-- header -->
<link href="<%= request.getContextPath() %>/css/kh_header.css" rel="stylesheet" type="text/css">
<!-- article -->
<link href="<%= request.getContextPath() %>/css/kh_article1.css" rel="stylesheet" type="text/css">
<!-- aside -->
<link href="<%= request.getContextPath() %>/css/kh_aside.css" rel="stylesheet" type="text/css">

<!-- Script 파일 추가 -->
<script src="<%= request.getContextPath() %>/js/kh_modal.js"></script>
</head>
<body>
    <div id="main_wrap">
        <div class="wrap header">
            <header>
                <div id="title">
                    <h1>Rint Development</h1>
                    <h2>HTML5 + CSS3 Basic</h2>
                </div>
                <nav id="main_gnb">
                    <ul>
                        <li><a href="#">Web</a></li>
                        <li><a href="#">Mobile</a></li>
                        <li><a href="#">Game</a></li>
                        <li><a href="#">Simulation</a></li>
                        <li><a href="#">Date</a></li>
                    </ul>
                </nav>
                <nav id="main_lnb">
                    <ul>
                        <li><a href="#">HTML5</a></li>
                        <li><a href="#">CSS3</a></li>
                        <li><a href="#">JavaScript</a></li>
                        <li><a href="#">jQuery</a></li>
                        <li><a href="#">Node.js</a></li>
                    </ul>
                </nav>
            </header>
        </div>
        <div class="wrap content">
            <div id="content">
                <section>
                    <div class="wrap article">
                    <article>
                        <h3>Main Article</h3>
                        <div class="d_flex">
                            <div>
                                <div><img src="https://dummyimage.com/45"></div>
                                <div><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur in magna libero. Sed nec pharetra nunc. Proin eget magna id ipsum eleifend cursus sit amet nec lectus. Nunc quis lacus magna. Aliquam blandit, sapien ut viverra fermentum, elit tortor ornare nisi, in luctus sem massa pulvinar turpis. Cras tincidunt dictum urna ut ultricies. Nullam diam nibh, pellentesque non laoreet ut, bibendum nec mauris. Maecenas pulvinar porttitor laoreet. Vivamus bibendum purus nisl, eget aliquam lectus. Maecenas justo libero, euismod sit amet suscipit eu, vulputate eget neque. Aliquam quam est, blandit nec iaculis non, suscipit vel nunc. Proin et odio aliquam erat pharetra accumsan et quis neque. Vivamus interdum accumsan leo eu adipiscing. Integer accumsan elit non turpis faucibus porttitor. </p></div>
                            </div>
                            <div>
                                <img src="https://dummyimage.com/45">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur in magna libero. Sed nec pharetra nunc. Proin eget magna id ipsum eleifend cursus sit amet nec lectus. Nunc quis lacus magna. Aliquam blandit, sapien ut viverra fermentum, elit tortor ornare nisi, in luctus sem massa pulvinar turpis. Cras tincidunt dictum urna ut ultricies. Nullam diam nibh, pellentesque non laoreet ut, bibendum nec mauris. Maecenas pulvinar porttitor laoreet. Vivamus bibendum purus nisl, eget aliquam lectus. Maecenas justo libero, euismod sit amet suscipit eu, vulputate eget neque. Aliquam quam est, blandit nec iaculis non, suscipit vel nunc. Proin et odio aliquam erat pharetra accumsan et quis neque. Vivamus interdum accumsan leo eu adipiscing. Integer accumsan elit non turpis faucibus porttitor. </p>
                            </div>
                            <div>
                                <img src="https://dummyimage.com/45">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur in magna libero. Sed nec pharetra nunc. Proin eget magna id ipsum eleifend cursus sit amet nec lectus. Nunc quis lacus magna. Aliquam blandit, sapien ut viverra fermentum, elit tortor ornare nisi, in luctus sem massa pulvinar turpis. Cras tincidunt dictum urna ut ultricies. Nullam diam nibh, pellentesque non laoreet ut, bibendum nec mauris. Maecenas pulvinar porttitor laoreet. Vivamus bibendum purus nisl, eget aliquam lectus. Maecenas justo libero, euismod sit amet suscipit eu, vulputate eget neque. Aliquam quam est, blandit nec iaculis non, suscipit vel nunc. Proin et odio aliquam erat pharetra accumsan et quis neque. Vivamus interdum accumsan leo eu adipiscing. Integer accumsan elit non turpis faucibus porttitor. </p>
                            </div>
                            <div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur in magna libero. Sed nec pharetra nunc. Proin eget magna id ipsum eleifend cursus sit amet nec lectus. Nunc quis lacus magna. Aliquam blandit, sapien ut viverra fermentum, elit tortor ornare nisi, in luctus sem massa pulvinar turpis. Cras tincidunt dictum urna ut ultricies. Nullam diam nibh, pellentesque non laoreet ut, bibendum nec mauris. Maecenas pulvinar porttitor laoreet. Vivamus bibendum purus nisl, eget aliquam lectus. Maecenas justo libero, euismod sit amet suscipit eu, vulputate eget neque. Aliquam quam est, blandit nec iaculis non, suscipit vel nunc. Proin et odio aliquam erat pharetra accumsan et quis neque. Vivamus interdum accumsan leo eu adipiscing. Integer accumsan elit non turpis faucibus porttitor. </p>
                            </div>
                        </div>
                        </article>
                    </div>
                    <div class="wrap article full_w">
                    <article>
                        <h3>Main Article</h3>
                        <button type="button" class="btn_login">로그인(modal)</button>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur in magna libero. Sed nec pharetra nunc. Proin eget magna id ipsum eleifend cursus sit amet nec lectus. Nunc quis lacus magna. Aliquam blandit, sapien ut viverra fermentum, elit tortor ornare nisi, in luctus sem massa pulvinar turpis. Cras tincidunt dictum urna ut ultricies. Nullam diam nibh, pellentesque non laoreet ut, bibendum nec mauris. Maecenas pulvinar porttitor laoreet. Vivamus bibendum purus nisl, eget aliquam lectus. Maecenas justo libero, euismod sit amet suscipit eu, vulputate eget neque. Aliquam quam est, blandit nec iaculis non, suscipit vel nunc. Proin et odio aliquam erat pharetra accumsan et quis neque. Vivamus interdum accumsan leo eu adipiscing. Integer accumsan elit non turpis faucibus porttitor. Aliquam scelerisque nisi et turpis pretium at ultricies turpis pharetra.</p>
                    </article>
                    </div>
                    <div class="wrap article">
                    <article>
                        <h3>Main Article</h3>
                        <button type="button" class="btn_enroll">회원가입(페이지열기)</button>
<script>
	$(".btn_enroll").click(function(){
		location.href="<%=request.getContextPath()%>/enroll";
	});
</script>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur in magna libero. Sed nec pharetra nunc. Proin eget magna id ipsum eleifend cursus sit amet nec lectus. Nunc quis lacus magna. Aliquam blandit, sapien ut viverra fermentum, elit tortor ornare nisi, in luctus sem massa pulvinar turpis. Cras tincidunt dictum urna ut ultricies. Nullam diam nibh, pellentesque non laoreet ut, bibendum nec mauris. Maecenas pulvinar porttitor laoreet. Vivamus bibendum purus nisl, eget aliquam lectus. Maecenas justo libero, euismod sit amet suscipit eu, vulputate eget neque. Aliquam quam est, blandit nec iaculis non, suscipit vel nunc. Proin et odio aliquam erat pharetra accumsan et quis neque. Vivamus interdum accumsan leo eu adipiscing. Integer accumsan elit non turpis faucibus porttitor. Aliquam scelerisque nisi et turpis pretium at ultricies turpis pharetra.</p>
                    </article>
                    </div>
                </section>
                <aside>
                    <input type="radio" value="first" name="tab" id="first" checked>
                    <input type="radio" value="second" name="tab" id="second" >
                    <div class="buttons">
                        <label for="first">First</label>
                        <label for="second">Second</label>
                    </div>
                    <div class="items">
                        <div class="tab_item">
                            <ul>
                                <li><a href="#"><div><img src="https://dummyimage.com/45"></div><div><strong>HTML5 Canvas</strong><p>2012-03-15</p></div></a></li>
                                <li><a href="#"><div><img src="https://dummyimage.com/45"></div><div><strong>HTML5 Canvas</strong><p>2012-03-15</p></div></a></li>
                                <li><a href="#"><div><img src="https://dummyimage.com/45"></div><div><strong>HTML5 Canvas</strong><p>2012-03-15</p></div></a></li>
                                <li><a href="#"><div><img src="https://dummyimage.com/45"></div><div><strong>HTML5 Canvas</strong><p>2012-03-15</p></div></a></li>
                            </ul>
                        </div>
                        <div class="tab_item">
                            <ul>
                                <li><a href="#"><div><img src="https://dummyimage.com/45"></div><div><strong>CSS3 Canvas</strong><p>2012-03-15</p></div></a></li>
                                <li><a href="#"><div><img src="https://dummyimage.com/45"></div><div><strong>CSS3 Canvas</strong><p>2012-03-15</p></div></a></li>
                                <li><a href="#"><div><img src="https://dummyimage.com/45"></div><div><strong>CSS3 Canvas</strong><p>2012-03-15</p></div></a></li>
                                <li><a href="#"><div><img src="https://dummyimage.com/45"></div><div><strong>CSS3 Canvas</strong><p>2012-03-15</p></div></a></li>
                            </ul>
                        </div>
                    </div>
                </aside>
            </div>
        </div>
        <div class="wrap footer">
            <footer>
                <h3>HTML5 + CSS3 Basic</h3>
                <address>Website Layout Basic</address>
            </footer>
        </div>
    </div>

    <div class="modal">
        <div class="modal_content">
            <div>
            	<a href="<%= request.getContextPath() %>/login.do?id=aaa&pwd=bbb"><button type="button">a태그사용</button></a>
                <form action="<%= request.getContextPath() %>/login.do" method="get">
                    <h3>로그인</h3>
                    <div>
                        <label for="id">id</label>
                        <input type="text" id="id" name="id">
                    </div>
                    <div>
                        <label for="pwd">password</label>
                        <input type="password" id="pwd" name="pwd">
                    </div>

                    <div>
                        <button type="submit" id="btn_login">로그인</button>
                        <button type="reset" class="btn_close">취소</button>
                    </div>
                    <input type="hidden" name="h1" value="숨김파일">
                </form>
            </div>
        </div>
    </div>
</body>
</html>