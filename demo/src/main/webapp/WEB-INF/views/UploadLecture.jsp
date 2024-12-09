<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="ko">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>UploadLecture</title>
            <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
            <link rel="stylesheet" href="/css/UploadLecture.css">
        </head>

        <body>

            <div id="loading-overlay" class="loading-overlay" style="display: none;">
                <div class="loading-content">
                    <p>텍스트로 변환 중...</p>
                    <div class="spinner"></div>
                </div>
            </div>

            <div class="Upload-container">
                <div class="header">EDU BUDDY</div>

                <div class="chat-container">
                    <img src="http://edubuddy.dothome.co.kr/pic/ailogo.png" class="buddy">

                    <div class="buddyChat">
                        <p><span id="userName">{사용자이름}</span>이 학습한 내용이야</span></p>
                        <p>이번엔 너가 녹음한 강의에서 중요한 내용을 뽑아서 문제를 만들어 줄게. 준비됐지?</p>
                        <p>문제 풀기를 시작하려면 학습하기 버튼을 눌러봐!</p>
                    </div>
                </div>

                <div class="category-tabs">
                    <button class="category-tab active">국어</button>
                    <button class="category-tab">영어</button>
                    <button class="category-tab">수학</button>
                    <button class="category-tab">사회</button>
                    <button class="category-tab">과학</button>
                    <button class="category-tab">역사</button>
                </div>

                <div class="recordings-container">
                    <c:forEach var="upload" items="${uploadList}">
                        <div class="recording-item">
                            <div class="recording-content">
                                <p>${upload.uploadFile}</p>
                                <div class="button-container">
                                    <button class="edit-button"
                                        onclick="EditPopup.show('${upload.uploadIdx}')">수정</button>

                                    <button class="delete-button"
                                        onclick="DeletePopup.show('${upload.uploadIdx}')">삭제</button>
                                </div>
                            </div>
                            <div class="recording-date">
                                <p>${upload.uploadDt}</p>
                            </div>
                            <div class="button-container">
                                <button class="recording-button"
                                    onclick="LearningPopup.show('${upload.uploadIdx}')">학습하기</button>
                            </div>
                        </div>

                    </c:forEach>
                </div>

                <div class="bottom-menu">
                    <button class="menu-item" onclick="location.href='Problem'">
                        <img src="http://edubuddy.dothome.co.kr/pic/book.svg" alt="문제 탐험대">
                        <span>문제 탐험대</span>
                    </button>
                    <button class="menu-item" onclick="location.href='Home'">
                        <img src="http://edubuddy.dothome.co.kr/pic/ai1.svg" alt="AI 학습관">
                        <span>AI 학습관</span>
                    </button>
                    <button class="menu-item" onclick="location.href='#dashboard'">
                        <img src="http://edubuddy.dothome.co.kr/pic/ox.svg" alt="다시도전">
                        <span>오답노트</span>
                    </button>
                    <button class="menu-item" onclick="location.href='#learning'">
                        <img src="http://edubuddy.dothome.co.kr/pic/status.svg" alt="학습여정">
                        <span>학습여정</span>
                    </button>
                </div>
            </div>

            <script src="/js/UploadLecture.js"></script>

        </body>

        </html>