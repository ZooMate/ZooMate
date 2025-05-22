# ZooMate

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>ZooMate DB Schema</title>
</head>
<body>

<table border="1" cellpadding="6" cellspacing="0" style="border-collapse: collapse; width: 700px;">
  <caption style="caption-side: top; font-weight: bold; font-size: 1.2em; margin-bottom: 8px;">📘 User Table</caption>
  <thead>
    <tr>
      <th>Column</th>
      <th>Type</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="color:#2ecc71; font-weight:bold;">id</td>
      <td>UUID</td>
      <td>사용자 고유 ID (PK)</td>
    </tr>
    <tr>
      <td>name</td>
      <td>String</td>
      <td>사용자 이름</td>
    </tr>
    <tr>
      <td>mail</td>
      <td>String</td>
      <td>이메일 주소</td>
    </tr>
    <tr>
      <td>birth</td>
      <td>Date</td>
      <td>생년월일</td>
    </tr>
    <tr>
      <td>profile</td>
      <td>URL?</td>
      <td>프로필 이미지 URL</td>
    </tr>
  </tbody>
</table>

<br />

<table border="1" cellpadding="6" cellspacing="0" style="border-collapse: collapse; width: 700px;">
  <caption style="caption-side: top; font-weight: bold; font-size: 1.2em; margin-bottom: 8px;">🐶 Pet Table</caption>
  <thead>
    <tr>
      <th>Column</th>
      <th>Type</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="color:#2ecc71; font-weight:bold;">id</td>
      <td>UUID</td>
      <td>반려동물 고유 ID (PK)</td>
    </tr>
    <tr>
      <td>name</td>
      <td>String</td>
      <td>반려동물 이름</td>
    </tr>
    <tr>
      <td>breed</td>
      <td>String</td>
      <td>품종</td>
    </tr>
    <tr>
      <td>photos</td>
      <td>[URL]</td>
      <td>사진 리스트</td>
    </tr>
    <tr>
      <td>species</td>
      <td>String</td>
      <td>종 (고양이, 강아지 등)</td>
    </tr>
    <tr>
      <td>gender</td>
      <td>Gender</td>
      <td>성별 (male / female)</td>
    </tr>
    <tr>
      <td>neutering</td>
      <td>Bool</td>
      <td>중성화 여부</td>
    </tr>
    <tr>
      <td>public</td>
      <td>Bool</td>
      <td>공개 여부</td>
    </tr>
    <tr>
      <td>weight</td>
      <td>Double</td>
      <td>몸무게</td>
    </tr>
    <tr>
      <td>tag</td>
      <td>[String]</td>
      <td>태그 배열 (예: ["온순함", "작음"])</td>
    </tr>
        <tr>
      <td>adress</td>
      <td>String</td>
      <td>사용자 주소</td>
    </tr>
    <tr>
      <td style="color:#3498db; font-weight:bold;">ownerId</td>
      <td>UUID</td>
      <td>사용자 ID (FK, User.id)</td>
    </tr>
  </tbody>
</table>

<br />

<table border="1" cellpadding="6" cellspacing="0" style="border-collapse: collapse; width: 700px;">
  <caption style="caption-side: top; font-weight: bold; font-size: 1.2em; margin-bottom: 8px;">💬 ChatRoom Table</caption>
  <thead>
    <tr>
      <th>Column</th>
      <th>Type</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="color:#2ecc71; font-weight:bold;">id</td>
      <td>UUID</td>
      <td>채팅방 고유 ID (PK)</td>
    </tr>
    <tr>
      <td style="color:#3498db; font-weight:bold;">senderId</td>
      <td>UUID</td>
      <td>보낸 사람 사용자 ID (FK, User.id)</td>
    </tr>
    <tr>
      <td style="color:#3498db; font-weight:bold;">senderPetId</td>
      <td>UUID</td>
      <td>보낸 사람 반려동물 ID (FK, Pet.id)</td>
    </tr>
    <tr>
      <td style="color:#3498db; font-weight:bold;">receiverId</td>
      <td>UUID</td>
      <td>받는 사람 사용자 ID (FK, User.id)</td>
    </tr>
    <tr>
      <td style="color:#3498db; font-weight:bold;">receiverPetId</td>
      <td>UUID</td>
      <td>받는 사람 반려동물 ID (FK, Pet.id)</td>
    </tr>
    <tr>
      <td>createdAt</td>
      <td>Date</td>
      <td>채팅방 생성 시간</td>
    </tr>
  </tbody>
</table>

<br />

<table border="1" cellpadding="6" cellspacing="0" style="border-collapse: collapse; width: 700px;">
  <caption style="caption-side: top; font-weight: bold; font-size: 1.2em; margin-bottom: 8px;">✉️ Message Table</caption>
  <thead>
    <tr>
      <th>Column</th>
      <th>Type</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="color:#2ecc71; font-weight:bold;">id</td>
      <td>UUID</td>
      <td>메시지 고유 ID (PK)</td>
    </tr>
    <tr>
      <td style="color:#3498db; font-weight:bold;">chatId</td>
      <td>UUID</td>
      <td>채팅방 ID (FK, ChatRoom.id)</td>
    </tr>
    <tr>
      <td style="color:#3498db; font-weight:bold;">senderId</td>
      <td>UUID</td>
      <td>보낸 사람 사용자 ID (FK, User.id)</td>
    </tr>
    <tr>
      <td style="color:#3498db; font-weight:bold;">senderPetId</td>
      <td>UUID</td>
      <td>보낸 사람 반려동물 ID (FK, Pet.id)</td>
    </tr>
    <tr>
      <td>content</td>
      <td>String</td>
      <td>메시지 내용</td>
    </tr>
    <tr>
      <td>createdAt</td>
      <td>Date</td>
      <td>전송 시간</td>
    </tr>
  </tbody>
</table>

</body>
</html>
