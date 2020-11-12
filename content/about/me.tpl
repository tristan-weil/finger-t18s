{{ template "header.tpl" . }}
{{/********** Global Vars **********/ -}}
{{ $width := 70 -}}
{{/********** Main **********/ -}}
:: ABOUT ME ::

More detailed information here: "https://t18s.fr/about-me"

{{ tablewriter (dict "data" (list (list "SUMMARY")) "width" $width "text-alignment" "center" "box-separator" "~" "box-left" ")" "box-right" ")") -}}
I am Tristan Weil, I am a System Engineer and I have skills in Linux
system administration and IT automation.

I currently enjoy finding solutions to ease and fasten the deployment
and the maintenance of systems and applications through automation.

I also like participating, together with development engineers and
project managers, in the entire service lifecycle of an application,
from the design through the development stages to production
maintenance.

I am thus a supporter of the DevOps way of working.

{{ tablewriter (dict "data" (list (list "LOOKING FOR A JOB")) "width" $width "text-alignment" "center" "box-separator" "~" "box-left" ")" "box-right" ")") -}}
I am currently looking for a job allowing me to work remotely from
Japan.

Contact me at tristan@contact.t18s.fr if you have a proposal.

Note that:
I've started learning Japanese but the road is still long...

I am currently living in France.
But thanks to my family situation, the acquisition of VISA allowing
me to work is not a problem.

{{ tablewriter (dict "data" (list (list "SKILLS")) "width" $width "text-alignment" "center" "box-separator" "~" "box-left" ")" "box-right" ")") -}}
I have about 10 years of experiences with the configuration, the
securing, and the maintenance of different Linux distributions in
medium-sized infrastructures (from 10 to 400 machines / vms):
- various tasks of systems administration (from installation to
production maintenance)
- deployment and configuration automation (Ansible since version 1.4)
- packaging
- monitoring
- development of various tools

I am also able to build and maintain key infrastructure components
that can integrate complex and critical architectures.
That includes:
- automated continuous integration systems (Ansible, Terraform, Jenkins)
- load balancers (HAProxy, traefik)
- monitoring / logging services (Grafana, Prometheus)
- orchestrators (Docker Swarm)
- web/application servers (Apache, Nginx)
- databases (MariaDB) and indexing services (Elasticsearch)
- languages (shell, Go, Perl)
- systems (Debian, CentOS/RedHat, OpenBSD)

I am also comfortable with:
- Consul
- Vault
- Nomad
- GitHub Actions
- Gitlab CI
- Packer

My git repositories: "https://github.com/tristan-weil"
{{ template "footer.tpl" . }}
