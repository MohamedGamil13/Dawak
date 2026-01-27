import 'package:flutter/material.dart';

class MedicationSearchCard extends StatelessWidget {
  const MedicationSearchCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: BoxDecoration(
              color: Color(0xFFE9F5EF), // اللون الأخضر الفاتح جداً للخلفية
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Icon(Icons.search, color: Color(0xFF27C466)), // أيقونة البحث
                SizedBox(width: 10),
                Text(
                  'Search medications...',
                  style: TextStyle(color: Color(0xFF5A9B7A), fontSize: 16),
                ),
              ],
            ),
          ),

          SizedBox(height: 16),

          // القسم السفلي (العنصر المقترح)
          Row(
            children: [
              // أيقونة علبة الدواء
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xFFE9F5EF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.medication, color: Color(0xFF27C466)),
              ),
              SizedBox(width: 12),
              // الأسطر الرمادية (التي تمثل النص)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(height: 10, width: 100, color: Colors.grey[300]),
                  SizedBox(height: 6),
                  Container(height: 10, width: 60, color: Colors.grey[200]),
                ],
              ),
              Spacer(),
              // الزر الدائري الصغير على اليمين
              Container(
                width: 40,
                height: 25,
                decoration: BoxDecoration(
                  color: Color(0xFFD1F2E1),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
