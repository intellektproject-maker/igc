class DashboardMock {
  DashboardMock._();

  static const Map<String, dynamic> studentDashboard = {
    // ==========================
    // Student Information
    // ==========================
    "student": {
      "id": "STD-2026-000001",
      "name": "Arjun Prasad",
      "chapter": "IGC Chennai Chapter",
      "college": "ABC Engineering College",
      "department": "Computer Science",
      "year": "III Year",
      "profileImage": "",
    },

    // ==========================
    // Dashboard Statistics
    // ==========================
    "statistics": {
      "talentScore": 845,
      "globalRank": 42,
      "innovationScore": 91,
      "certificates": 12,
    },

    // ==========================
    // Progress
    // ==========================
    "progress": {
      "learning": 80,
      "innovation": 65,
      "projects": 90,
      "leadership": 55,
      "community": 70,
      "research": 45,
      "overall": 78,
    },

    // ==========================
    // Mentor
    // ==========================
    "mentor": {
      "name": "Dr. John Samuel",
      "designation": "Innovation Mentor",
      "nextSession": "28 Jul 2026",
    },

    // ==========================
    // Notifications
    // ==========================
    "notifications": 8,

    // ==========================
    // Messages
    // ==========================
    "messages": 3,
  };
}