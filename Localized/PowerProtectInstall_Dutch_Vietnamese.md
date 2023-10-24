# Xin chào 👋🏼

Trên máy tính xách tay Apple Silicon Mac, Chế độ màn hình đóng có thể không hoạt động như mong đợi sau khi kết nối hoặc ngắt kết nối máy Mac của bạn khỏi nguồn điện bên ngoài như bộ đổi nguồn hoặc màn hình có nguồn điện. Để tránh mọi sự cố, bạn có thể cài đặt tập lệnh và tệp cấu hình để giải quyết sự cố.

Tôi thực sự xin lỗi vì điều này, nhưng Apple không có cách nào khác. Apple cho rằng họ biết rõ hơn bạn và sẽ không cho phép bạn cho phép Amphetamine cài đặt trực tiếp tập lệnh và tệp cấu hình cần thiết để tránh sự cố với Chế độ hiển thị đóng. Ngày nay, để mọi thứ "chỉ hoạt động", có vẻ như bạn phải tự mình làm điều đó. 🔨💪🏼

---

# Cách cài đặt Power Protect

1. <b>[Tải xuống tập lệnh Power Protect](https://raw.githubusercontent.com/x74353/Amphetamine/master/Files/PowerProtect_Script.zip)</b> và cài đặt tập lệnh đó ở vị trí sau:<BR>
     ```/Users/YourUserAccount/Library/Application Scripts/com.if.Amphetamine/```

2. <b>[Tải xuống tệp cấu hình Power Protect](https://raw.githubusercontent.com/x74353/Amphetamine/master/Files/PowerProtect_Configuration.zip)</b> và cài đặt tệp đó ở vị trí sau:<BR >
     ```/private/etc/sudoers.d/```

3. Mở Terminal.app từ ```/Applications/Utilities/```, sau đó sao chép và dán lệnh sau vào cửa sổ Terminal:<BR>

     ```defaults write com.if.Amphetamine 'Enable Power Protect Install' -bool TRUE```

    sau đó nhấn phím Return để thực hiện lệnh
