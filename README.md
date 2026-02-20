<!-- ===================================================== -->
<!--                 SwiftChat — README.md                  -->
<!--        Premium • Interactive • Recruiter-Ready         -->
<!-- ===================================================== -->

<div align="center">

<img width="100%" alt="SwiftChat premium header"
src="https://capsule-render.vercel.app/api?type=waving&color=0:070A12,45:1E3A8A,75:4F46E5,100:06B6D4&height=230&section=header&text=SwiftChat&fontSize=70&fontColor=FFFFFF&fontAlignY=40&desc=Real-Time%20iOS%20Messaging%20%E2%80%A2%20SwiftUI%20%E2%80%A2%20Combine%20%E2%80%A2%20WebSockets%20%E2%80%A2%20MVVM%20%2B%20Repository&descAlignY=70&descSize=18&animation=fadeIn" />

<br/>

<img alt="Swift" src="https://img.shields.io/badge/Swift-5.9-F05138?style=for-the-badge&logo=swift&logoColor=white"/>
<img alt="SwiftUI" src="https://img.shields.io/badge/SwiftUI-UI-2563EB?style=for-the-badge&logo=swift&logoColor=white"/>
<img alt="Combine" src="https://img.shields.io/badge/Combine-Reactive-7C3AED?style=for-the-badge"/>
<img alt="WebSockets" src="https://img.shields.io/badge/WebSockets-Real--Time-DC2626?style=for-the-badge"/>
<img alt="Architecture" src="https://img.shields.io/badge/Architecture-MVVM%20%2B%20Repository-16A34A?style=for-the-badge"/>

<br/><br/>

<a href="#-architectural-philosophy"><b>Architecture</b></a> •
<a href="#-real-time-data-flow"><b>Real-Time Flow</b></a> •
<a href="#-project-overview"><b>Overview</b></a> •
<a href="#-contact"><b>Contact</b></a>

</div>

---

## ✨ Project Overview

SwiftChat is a modern real-time iOS chat application that showcases **clean architectural thinking** and **production-style system design**.

The emphasis is on:
- **Predictable state management** (Combine + SwiftUI)  
- **Low-latency communication** (WebSockets)  
- **Scalable separation of concerns** (MVVM + Repository)  
- **Test-friendly boundaries** (protocol-first design)  

---

## 🧭 Architectural Philosophy

<details open>
<summary><b>🧠 Interactive Architecture Flow (click to collapse)</b></summary>
<br/>

<div align="center">

### View → ViewModel → Repository → WebSocket Client

<pre>
View
  ↓
ViewModel
  ↓
Repository
  ↓
WebSocket Client
</pre>

</div>

<table>
<tr>
<td width="25%" valign="top"><b>View</b><br/>Declarative UI only. Renders state, emits actions.</td>
<td width="25%" valign="top"><b>ViewModel</b><br/>Owns screen state, orchestrates events, transforms streams.</td>
<td width="25%" valign="top"><b>Repository</b><br/>Protocol boundary. Decouples networking from presentation logic.</td>
<td width="25%" valign="top"><b>WebSocket</b><br/>Transport details: connect, encode/decode, reconnect, errors.</td>
</tr>
</table>

<b>Why this matters</b>
- ✅ Swappable backend  
- ✅ Clean dependency inversion  
- ✅ Easy mocking for tests  
- ✅ Network layer decoupled from UI  

</details>

---

## 🔁 Real-Time Data Flow

<details open>
<summary><b>🔄 Interactive Real-Time Flow (click to collapse)</b></summary>
<br/>

<div align="center">

<pre>
User Interaction
        ↓
ViewModel Action
        ↓
Repository Abstraction
        ↓
WebSocket Transmission
        ↓
Incoming Stream Event
        ↓
State Update
        ↓
SwiftUI Re-render
</pre>

<b>Unidirectional. Predictable. Observable.</b>

</div>

</details>

---

## ✅ Recruiter Snapshot

<table>
<tr>
<td width="50%" valign="top">

### What SwiftChat demonstrates
- Real-time networking fundamentals (WebSockets)  
- Reactive UI state pipelines (Combine)  
- Clean MVVM separation  
- Repository abstraction for testability  
- Production-style layering & maintainability  

</td>
<td width="50%" valign="top">

### Designed to scale into
- Offline persistence (SwiftData/CoreData)  
- Authentication (JWT/OAuth)  
- Delivery receipts & retries  
- Group chats / rooms  
- Push notifications  

</td>
</tr>
</table>

---

## 🤝 Contact

<div align="center">

<a href="https://www.linkedin.com/in/navyashree-byregowda-472821196/">
  <img src="https://img.shields.io/badge/LinkedIn-Connect-1E40AF?style=for-the-badge&logo=linkedin&logoColor=white"/>
</a>

<a href="https://github.com/Navyagowda2714">
  <img src="https://img.shields.io/badge/GitHub-Portfolio-111827?style=for-the-badge&logo=github&logoColor=white"/>
</a>

<a href="mailto:navyashreebyregowda@gmail.com">
  <img src="https://img.shields.io/badge/Email-Let's%20Talk-DC2626?style=for-the-badge&logo=gmail&logoColor=white"/>
</a>

<br/><br/>
<sub>SwiftChat — built to demonstrate engineering maturity, not just UI.</sub>

</div>
