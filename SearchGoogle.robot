*** Setting ***
Library    Selenium2Library    11s

*** Variable ***

*** Testcase ***
ฉันอยากทดลองค้นหาวิธีปราบเมียจากGoogle
    เปิดบราวเซอร์ Google
    กรอกข้อมูลที่จะค้นหาวิธีปราบเมืย
    Capture Page Screenshot
    กดปุ่มค้นหา
    แสดงข้อมูลที่ต้องการค้นหา "ใครมีวิธีปราบเมียมั่งครับ"
    ปิดบราวเซอร์

*** keyword ***
เปิดบราวเซอร์ Google
    open browser    http://www.google.co.th
กรอกข้อมูลที่จะค้นหาวิธีปราบเมืย
    input text     q    วิธีปราบเมีย
กดปุ่มค้นหา
    click button    btnG
แสดงข้อมูลที่ต้องการค้นหา "ใครมีวิธีปราบเมียมั่งครับ"
    wait until page contains    ใครมีวิธีปราบเมียมั่งครับ
ปิดบราวเซอร์
    close browser
