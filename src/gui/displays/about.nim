import gintro / gtk


proc onClickAbout*(b: Button) =
  #[
    Show help for main and credit in new dialog
  ]#
  let
    dlgAbout = newAboutDialog()
  
  discard dlgAbout.setIconFromFile("/usr/share/icons/anonsurf.png")
  dlgAbout.setLogoIconName("security-high")
  dlgAbout.setProgramName("AnonSurf")
  dlgAbout.setVersion("3.0.0")
  # dlgAbout.setArtists([]) # Artwork by
  # dlgAbout.setDocumenters([]) # Documented by
  # dlgAbout.setTranslatorCredits([]) # Translated by
  dlgAbout.setAuthors([
    "Lorenzo \"Palinuro\" Faletra",
    "Nong Hoang \"DmKnght\" Tu",
    "Lisetta \"Sheireen\" Ferrero",
    "Francesco \"Mibofra\" Bonanno",
  ])
  dlgAbout.setComments("Anonymous Toolkit for Parrot OS")
  dlgAbout.setCopyright(
    "Copyright © 2013 - 2020 Lorenzo \"Palinuro\" Faletra\nCopyright © 2020 Parrot Security CIC"
  )
  dlgAbout.setLicenseType(gpl_3_0)
  dlgAbout.setWebsite("https://nest.parrot.sh/packages/tools/anonsurf")
  dlgAbout.setWebsiteLabel("Source")

  discard dlgAbout.run()
  dlgAbout.destroy()
