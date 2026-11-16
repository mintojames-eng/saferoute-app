# 🛡️ SafeRoute AI - Full-Stack Smart Navigation & Urban Risk Engine

A comprehensive full-stack urban road safety platform powered by **React 19**, **Flask**, and **MongoDB 8.3**. SafeRoute AI provides real-time collision prediction, city-wide 50+ Bangalore area risk mapping, community flood/hazard warnings, and neural telematics route calculation.

---

## 📁 Project Architecture

```
saferoute-app/
├── backend/                       # Python Flask REST API + Neural Telematics
│   ├── app.py                     # Main Flask application with MongoDB connection
│   ├── seed_mongo.py              # Standalone database seeder
│   ├── test_all_apis.py           # Automated API test suite
│   ├── verify_all.py              # 1-click test verification script
│   ├── requirements.txt           # Python dependencies
│   └── README.md                  # Backend documentation
│
├── frontend/                      # React 19 + Vite Web Application
│   ├── src/
│   │   ├── components/            # IncidentMap, RiskPredictionForm, AuthModal, RiskDashboard, SafetyAlerts, UserProfile
│   │   ├── data/                  # bangaloreAreas.js (55+ localities), defaultIncidents.js, mockData.js
│   │   ├── App.jsx                # Main application orchestrator
│   │   ├── App.css
│   │   ├── main.jsx
│   │   └── index.css
│   ├── public/
│   ├── index.html
│   └── package.json
│
├── start_backend.bat              # 1-click launcher for Flask (Port 5000)
├── start_frontend.bat             # 1-click launcher for React UI (Port 5173)
├── push_to_github.bat             # 1-click GitHub push script
└── README.md                      # Complete project documentation
```

---

## 🚀 1-Click Quick Start (Windows)

1. Double-click **`start_backend.bat`** → Launches Flask on `http://127.0.0.1:5000` with MongoDB connected.
2. Double-click **`start_frontend.bat`** → Launches React on `http://localhost:5173`.
3. Open `http://localhost:5173` in your browser!

---

## 🗺️ Key Features Implemented

1. **55+ Bangalore Localities Across 5 Zones**:
   - Master coverage across Central, South, East (Tech Corridor), North, and West zones.
   - Interactive search bar with Leaflet animated pan & zoom (`map.flyTo`).
   - Zone filter chips (All, Central, South, East, North, West).
2. **City-Wide AI Risk Prediction Engine**:
   - Starting location & destination dropdowns pulling 55+ areas from MongoDB.
   - Neural accident risk score calculation based on live weather and peak traffic hours.
3. **Dedicated Full-Featured Views**:
   - 📊 **Neural Risk Dashboard**: Interactive simulation sliders for weather and congestion.
   - 🔔 **Real-Time Safety Alerts**: Community waterlogging, accident reports, and upvote verification.
   - 👤 **Commuter Profile**: Driver safety rating, saved commutes, vehicle info, and Emergency ICE contacts.
   - 🔐 **Authentication**: Commuter Login and Signup with MongoDB persistence.
4. **Local MongoDB 8.3 Integration**:
   - Collections: `bangalore_areas`, `incidents`, `users`, `alerts`, `dashboardStats`, `predictions`.

---

## 🧪 MongoDB Lab Commands Reference

```bash
# 1. Verify installation
mongod --version
mongosh --version

# 2. Start Mongo Shell
mongosh

# 3. Check databases & switch
show dbs
use saferoute

# 4. Show collections
show collections

# 5. SafeRoute CRUD operations
db.incidents.find().limit(2)
db.bangalore_areas.find({ zone: "East" })
db.incidents.insertOne({ id: 1001, name: "Koramangala Sony World Signal", risk: "High", road: "Poor", accidents: 45 })
db.incidents.updateOne({ name: "Koramangala Sony World Signal" }, { $set: { road: "Good", risk: "Low" } })
db.incidents.deleteOne({ name: "Koramangala Sony World Signal" })
```

---

## 📤 Push to GitHub

Double-click **`push_to_github.bat`** or run:

```powershell
git add .
git commit -m "Update SafeRoute AI"
git push origin main
```
