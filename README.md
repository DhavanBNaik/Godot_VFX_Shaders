# 🎨 Godot VFX Portfolio Project

This project is a collection of stylized visual effects (VFX) built in **Godot Engine** as part of a personal technical art portfolio. It includes real-time shader work, particle effects, destruction systems, and scripting—highlighting skills relevant to the **Technical Artist** role.

---

## 🚀 How to Run

1. Download or clone the repository:
   ```bash
   git clone https://github.com/DhavanBNaik/Godot_VFX_Shaders

2. Open Godot Engine (version 4.2 or later).
3. Click "Import Project" and select `project.godot` inside the root folder.
4. Open any scene from the `Scenes/` folder and press `F6` to run the effect preview.

## ✨ Effects Included

- **VFX Fire**  
Shader-based stylized fire using GPU particles, Voronoi dissolve, and UV panning.

- **Smoke Ball**  
Layered sphere meshes with animated textures and gradient shading to simulate a stylized smoke cloud.

- **Object Destruction and Reconstruction**  
Blender-generated cell fracture meshes with scripted physics-based explosion and smooth reconstruction using tweens.

- **Energy Beam**  
Animated cylinder-based beam with scaling curves, custom shaders, and a shockwave burst using particles.

## 🧠 Technologies and Skills Demonstrated

- Godot Engine 4.2+
- GDScript
- ShaderMaterial (custom vertex/fragment shaders)
- GPU Particles
- Procedural animation and effects
- Scene instancing and animation triggering
- Blender for mesh preparation

## 📁 Key Files and Scenes

- `vfx_fire.tscn` – Stylized fire effect  
- `smoke_ball.tscn` – Layered smoke simulation  
- `CubeFractured.tscn`, `CubeWhole.tscn` – Destruction system  
- `energy_beam.tscn` – Beam effect with scripted animation  
- `cube_fractured.gd`, `cube_replace.gd` – Destruction and reconstruction logic  
- `shaders/` – All custom shaders used in the project

