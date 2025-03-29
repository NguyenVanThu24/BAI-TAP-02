SELECT
    SinhVien.hoten,
    DKMH.masv,
    LopHP.maLopHP,
    LopHP.TenLopHP,
    AVG(Diem.diem) * 0.4 AS [DiemThanhPhan]
FROM DKMH
	JOIN Diem ON DKMH.id_dk = Diem.id_dk
	JOIN LopHP ON DKMH.maLopHP = LopHP.maLopHP
	JOIN SinhVien ON DKMH.masv = SinhVien.masv
WHERE
    DKMH.masv = 'K225480106061'
    AND LopHP.maLopHP = 'HP123'
GROUP BY
    SinhVien.hoten, DKMH.masv, LopHP.maLopHP, LopHP.TenLopHP;
