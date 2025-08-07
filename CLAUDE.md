# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This repository contains a single HTML file (`agenticAI.html`) that implements an interactive course landing page for an "Agentic AI Crash Course" focused on CrewAI platform and multi-agent applications.

## File Structure

- `agenticAI.html` - Complete self-contained course landing page with embedded CSS and JavaScript

## Content Architecture

The HTML file implements a single-page application with:

### Layout Components
- **Header Section**: Course title, description, and statistics (6 weeks, 17 videos, 4 exercises)
- **Sidebar Navigation**: Week-by-week course navigation menu
- **Main Content Area**: Dynamic content display with smooth transitions

### Course Structure
The course is organized into 6 weeks plus exercises:
1. **Week 1**: Introduction & Setup - Basic agent creation
2. **Week 2**: Agents & Tasks - Agent design and task creation
3. **Week 3**: Tools & RAG - External tool integration
4. **Week 4**: Multi-Agent Workflows - Complex agent collaboration
5. **Week 5**: Autonomy & Guardrails - Reliability and error handling
6. **Week 6**: Advanced Topics & Capstone - Production deployment

### Interactive Features
- Dynamic content switching via JavaScript
- Progress bar that updates based on selected week
- Smooth CSS transitions and hover effects
- Responsive design for mobile devices

## Technical Implementation

### CSS Architecture
- Uses CSS Grid and Flexbox for responsive layout
- Gradient backgrounds and glassmorphism effects
- Custom CSS variables for consistent theming
- Mobile-first responsive design patterns

### JavaScript Functionality
- `showWeek(weekId)` function handles content switching
- Progress bar animation with delayed transitions
- Event handling for navigation buttons
- DOM manipulation for active state management

## Development Notes

- This is a static HTML file with no build process required
- All dependencies (CSS/JS) are embedded inline
- No external frameworks or libraries used
- Can be opened directly in any web browser

## Current Project Status

### Completed Infrastructure
- ✅ **Google Cloud Project**: `custom-training-agentic` created and active
- ✅ **GitHub Repository**: https://github.com/ys-rtianero/custom-training-agentic
- ✅ **Cloud Storage Setup**: `gs://custom-training-agentic-site` with static hosting
- ✅ **Load Balancer**: Configured with Cloud CDN and SSL certificate
- ✅ **Firebase APIs**: Enabled in Google Cloud project
- ✅ **MCP Servers**: Context7 (remote) and GCP (local) configured

### Current Deployment Architecture Decision
**Switched from Cloud Storage + IAP to Firebase Hosting + Email Auth**

**Reasons for Change**:
- IAP complexity and potential enterprise subscription requirements
- User request for email-based OTP authentication restricted to @you-source.com domain
- Firebase provides better integrated authentication and hosting solution

### Implementation Plan - Firebase Hosting with Email Authentication

**Phase 1: Firebase Setup** ✅ **COMPLETED**
- ✅ Firebase APIs enabled in Google Cloud project
- ✅ Firebase CLI installed and authenticated
- ✅ Firebase project initialized with hosting
- ✅ Firebase web app created

**Phase 2: Authentication Implementation** ✅ **COMPLETED**
- ✅ Firebase Authentication configured with email link provider
- ✅ Domain restriction implemented for @you-source.com emails only
- ✅ Authentication UI and JavaScript logic implemented
- ✅ Content protection with authentication overlay

**Phase 3: Hosting Migration** ✅ **COMPLETED**
- ✅ Deployed to Firebase Hosting: https://custom-training-agentic.web.app
- ✅ GitHub Actions workflow updated for Firebase deployment
- ⚠️ **MANUAL STEP REQUIRED**: Run `firebase login:ci` and add FIREBASE_TOKEN to GitHub secrets

### Key Files Created
- `setup-iap.md` - IAP setup instructions (now deprecated in favor of Firebase)
- `configure-iap-access.sh` - IAP access script (deprecated)
- `.github/workflows/deploy.yml` - GitHub Actions deployment workflow (needs update for Firebase)

### Final Steps to Complete Setup

1. **Add authorized domain in Firebase Console**:
   - Go to https://console.firebase.google.com/project/custom-training-agentic/authentication/settings
   - Under "Authorized domains", add: `custom-training-agentic.web.app`

2. **Set up GitHub Actions CI token**:
   ```bash
   firebase login:ci
   ```
   - Copy the generated token
   - Add it as `FIREBASE_TOKEN` secret in GitHub repository settings

3. **Test the deployment**:
   - Visit https://custom-training-agentic.web.app
   - Try authentication with a @you-source.com email
   - Verify email restriction works with non-@you-source.com emails

### Current Live URL
🌐 **https://custom-training-agentic.web.app**

### Infrastructure Cleanup Options
- Keep existing Cloud Storage + Load Balancer setup as backup
- Or remove to save costs once Firebase deployment is confirmed working

### Load Balancer Details (if keeping as backup)
- **IP Address**: 34.36.139.127
- **SSL Certificate**: Provisioning (may take up to 60 minutes)
- **Backend**: `gs://custom-training-agentic-site`