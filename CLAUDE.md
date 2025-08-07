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