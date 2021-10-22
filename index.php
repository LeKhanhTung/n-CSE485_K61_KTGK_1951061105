<?php include './header.php'; ?>

<a href="function/add.php" class="btn btn-success">Thêm</a>


<table class="table table-responsive">
    <thead>
        <tr>
            <th scope="col">Mã phương tiện</th>
            <th scope="col">Biển số</th>
            <th scope="col">Model</th>
            <th scope="col">Năm sản xuất</th>
            <th scope="col">Kiểu ô tô</th>
            <th scope="col">Gía cho thuê theo ngày</th>
            <th scope="col">Gía cho thuê theo tuần</th>
            <th scope="col">Trạng thái</th>            
            <th class="col" scope="col">Chức năng</th>
        </tr>
    </thead>
    <tbody>
        <!--xuất dữ liệu theo CSDL -->
        <?php
        //* B1: mở kết nối
        include './config.php';
        //* B2: Truy vấn
        $sql = "SELECT * FROM car ";

        //? lưu kết quả trả về $result
        $result = mysqli_query($conn, $sql);

        //* B3: Phân tích sử lý kết quả
        if (mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                echo "<tr>";
                echo '<td>' . $row['Mã phương tiện'] . '</td>';
                echo '<td>' . $row['Biển số'] . '</td>';
                echo '<td>' . $row['Model'] . '</td>';
                echo '<td>' . $row['Năm sản xuất'] . '</td>';
                echo '<td>' . $row['Kiểu ô tô'] . '</td>';
                echo '<td>' . $row['Gía cho thuê theo ngày'] . '</td>';
                echo '<td>' . $row['Gía cho thuê theo tuần'] . '</td>';
                echo '<td>' . $row['Trạng thái'] . '</td>';            
                echo '<td>
                <a href="./detail.php?id=' . $row['vehicle_id'] . '" class="btn btn-primary">Chi tiết</a>
                <a href="function/edit.php?id=' . $row['vehicle_id'] . '" class="btn btn-success">Sửa</a>
                <a href="function/delete.php?id=' . $row['vehicle_id'] . '" class="btn btn-danger">Xoá</a>
                        
                </td>';
                echo '</tr>';
            }
        }
        //* B4: đóng kết nối
        mysqli_close($conn);
        ?>
    </tbody>
</table>

<?php include './footer.php' ?>