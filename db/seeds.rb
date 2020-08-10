# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

initial_subdomain = Subdomain.create({
    subdomain: "demo",
    in_use: true
})

anchor_tenant = Operator.create({
    name: "Demo Space",
    ios_url: "https://itunes.apple.com/us/app/cowork-tahoe-the-lab/id1457603889?mt=8",
    android_url: "https://play.google.com/store/apps/details?id=com.jellyswitch.coworktahoe&pcampaignid=MKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1",
    childcare_enabled: true,
    bulletin_board_enabled: true,
    crm_enabled: true,
    subdomain: "demo"
})

first_location = Location.create({
    name: "Demo Location",
    operator_id: anchor_tenant
})
