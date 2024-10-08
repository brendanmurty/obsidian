# Obsidian Configuration

My custom [Obsidian](https://obsidian.md/) configuration files ([config](config/)), example note vault ([example](example/)) and related management scripts ([setup.sh](setup.sh) and [update.sh](update.sh)).

## Previews

Here's some previews of Obsidian running with these settings using the vault in the [example directory](example).

![Screenshot one](docs/screenshot1.png)

![Screenshot two](docs/screenshot2.png)

![Screenshot three](docs/screenshot3.png)

## Setup

1. Install and open [Obsidian](https://obsidian.md/)
2. Create a new Obsidian vault named `Notes` in your user directory
3. Close Obsidian
4. Setup fonts

- Purchase your own license for the `Regular` variant of the [IO font by Mass-Driver](https://io.mass-driver.com/) and install the OTF file on your machine
- Alternatively, use your own fonts and update font names in files inside of the [config directory](config/)

5. Run the [setup script](setup.sh) (use [Git Bash](https://git-scm.com/downloads) on Windows): `bash setup.sh`
6. Open Obsidian

## Update

To update the config files here from the config files in your vault configuration directory, run the [update script](update.sh):

`bash update.sh`