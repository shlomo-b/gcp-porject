resource "google_compute_firewall" "all-access" {


  name    = "staging-demo-ssh-ipv4"
  network = module.vpc.network.self_link

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = [22]
  }

  source_ranges = ["84.228.161.67/32"]
  target_tags   = module.instance["instance"].tags
}