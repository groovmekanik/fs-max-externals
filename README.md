## fs-max-externals

### Overview

This repository is the beginning of a collection of open-source Max externals by Robert K from Fixation Studios, also known as GMaudio.Over time, this repository is intended to grow into a proper Max Package containing multiple dynamics, filter and utility externals.

For now it contains a single external, `fs.squeeze~`, which is a native Max port of the **GMaudio Squeeze 2.0** upward compressor/limiter, originally released as a Max for Live device for Ableton Live [(Product page)](https://robertkgm.gumroad.com/l/gma-squeeze). I've had mutliple requests for this as an external and can't wait to see how people will use it in thier projects.

`fs.squeeze~` is a **multi-band upward compressor/limiter** that can do everything from subtle loudness enhancement and transient clarification to total sonic annihilation. It has been designed for transparent, punchy dynamics control with a unique low-distortion release characteristic and dynamic-phase crossovers that allow parallel-style processing without phasey artifacts, as described in more detail in the Squeeze article on Fixation Studios [(“Squeeze Every Last Drop”)](https://fixationstudios.com.au/gmaudio-squeeze-every-last-drop/).

### Features (`fs.squeeze~`)

Based on the original [GMaudio Squeeze device](https://robertkgm.gumroad.com/l/gma-squeeze), `fs.squeeze~` offers:

- **Multi-band upward compression/limiting**
  - 3-band operation with dynamic phase crossovers at 300 Hz and 5 kHz.
  - Designed for near-flat summed response, maintaining coherency between bands.
- **Single–multi band morph**
  - Smoothly move from single-band to multi-band behaviour to control how spectral the effect feels.
- **Minimal but powerful control set**
  - Floor, Squeeze, Ceiling, Style, Time, Mix and transport-aware Bypass behaviour (see help patch for exact control mapping).
- **Transparent but aggressive when pushed**
  - Subtle loudness enhancement at conservative settings.
  - Extreme upward compression at low Time / high Squeeze / high Mix, “squeezing every last drop” out of the source.
- **Efficient real-time processing**
  - Highly optimised DSP designed for low CPU usage and low distortion.
  - Internal design targets accurate peak detection and natural release without “pumping”.
- **Low latency**
  - Introduces only 8 samples of latency (less than 0.2 ms at 44.1 kHz), effectively negligible in most workflows.

### Repository Contents

- `externals/fs.squeeze~.mxo` – macOS build of the `fs.squeeze~` Max external.
- `externals/fs.squeeze~.mxe64` – Windows 64-bit build of the `fs.squeeze~` Max external.
- `help/fs.squeeze~.maxhelp` – Max help patch for `fs.squeeze~` (recommended starting point).
- `docs/fs.squeeze~.maxref.xml` – Max reference entry for `fs.squeeze~`.

These files are already arranged in a **Max Package–friendly layout**, so you can drop or clone this repo directly into your Max Packages folder.

### Installation (as a Max Package)

To use this repository like a Max Package:

1. **Locate your Max Packages folder**
   - **macOS**: `~/Documents/Max 8/Packages/`
   - **Windows**: `C:\Users\<username>\Documents\Max 8\Packages\`
2. **Clone or copy the repo**
   - Option A (recommended): clone this repo directly into your Packages folder:
     ```bash
     cd "~/Documents/Max 8/Packages"
     git clone https://github.com/<your-github-username>/fs-max-externals.git
     ```
     (Adjust the path for Windows if needed.)
   - Option B: download the repo as a `.zip` from GitHub and extract it into the `Packages` folder.
3. **Restart Max**
   - Relaunch Max so it rescans packages.
4. **Verify installation**
   - In a new Max patcher, create an object and type `fs.squeeze~`.  
   - If the external is installed correctly, Max will autocomplete and instantiate the object.

Once installed, Max will also see the help and reference files bundled in this package.

### Using `fs.squeeze~` in Max

For a guided overview of parameters, signal flow and suggested usage:

1. In a Max patcher, create an `fs.squeeze~` object.
2. Right-click (or Ctrl-click) the object and choose **Open fs.squeeze~ Help**.  
3. Explore the included help patch, which demonstrates the effect of core parameters.

General usage notes:

- The **Floor** and **Ceiling** style controls effectively define the upward compression window: material above Floor is pushed toward Ceiling, while content below Floor is left untouched.
- **Time** controls envelope release behaviour, from fast, aggressive upward compression to slower, quasi-normalization.
- **Style** morphs between **single-band** and **multi-band** behaviour, allowing you to dial in how broadband or spectral the effect should be.
- **Dry/Wet(Mix)** lets you easily transition between parallel upward compression and full-on processed output.

For deeper background on the design philosophy and musical applications, see the original Squeeze documentation on Gumroad [(GMaudio Squeeze 2.0)](https://robertkgm.gumroad.com/l/gma-squeeze) and the detailed article on Fixation Studios [(“Squeeze Every Last Drop”)](https://fixationstudios.com.au/gmaudio-squeeze-every-last-drop/).

### Roadmap

This repository is the first step towards a full Fixation Studios Max Package, with plans to:

- Add additional dynamics and utility externals as they are ported from existing devices or developed from scratch.
- Provide more example patches and reference material tailored for pure Max (beyond Max for Live).
- Iterate on externals based on community feedback.

If you have ideas for features or new externals that would complement `fs.squeeze~`, please open an issue (see below).

### Contributing & Issues

Contributions, feedback and ideas are very welcome, especially from producers, sound designers and other audio developers.

- **Bug reports**  
  - Include your OS (macOS/Windows), Max version, sample rate, buffer size, and a minimal patch (or clear repro steps) if possible.
- **Feature requests / improvements**  
  - Describe your use-case and why a given feature would be useful in a real-world audio workflow.
- **Platform / build issues**  
  - If you experience problems loading the external, please include any Max console errors when you open an issue.

To suggest improvements or report bugs, **open a GitHub Issue on this repository** with as much relevant detail as you can provide.

At this stage, the repo primarily distributes **prebuilt externals**; if/when public source code and build instructions are added, they will be documented here.

### License – Non-Commercial Use Only

This project is released under a **strict non-commercial license**:

- **You may:**
  - Use these externals for personal, educational, research or open-source projects that are not monetised.
  - Use them in your own music, sound design, or installations, including works that may be sold or monetised.
  - Share unmodified copies of this repository (or future official releases) as long as you clearly preserve this license.
- **You may *not* (without explicit written permission):**
  - Sell, rent, or otherwise monetise these externals themselves, whether standalone or as part of a larger product.
  - Include these externals in **any commercial product**, whether the product itself is paid or free, if it is:
    - Packaged, distributed, or branded alongside paid products; or
    - Part of a commercial bundle, collection, or service (including “freemium” tiers).
  - Repackage or redistribute these externals under a different license.

In other words, **any distribution context that is tied to a commercial product, company, or paid offering is considered commercial use**, even if the specific download is free.

If you are interested in a commercial license, redistribution, or bundling `fs.squeeze~` (or future externals) with paid products, please contact me: robertk@fixationstudios.com.au

### Credits & Acknowledgements

- **Author / DSP / Design**: Robert K // Groov Mekanik // Fixation Studios
- **Original Max for Live device**: [GMaudio Squeeze 2.0](https://robertkgm.gumroad.com/l/gma-squeeze)  
- Thanks to everyone who has supported my work and shared the original device.

This project is not affiliated with or endorsed by Ableton, Cycling ‘74, or any other company. All trademarks are the property of their respective owners.


