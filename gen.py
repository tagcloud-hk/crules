from jinja2 import Environment, FileSystemLoader
import os
from conf.settings import BASE_PATH, OUT_DIR


def generate_html(data, out_fname, template_fname='template.yaml'):
    template_path = os.path.join(BASE_PATH, 'conf')
    env = Environment(loader=FileSystemLoader(template_path))
    template = env.get_template(template_fname)

    if not os.path.exists(os.path.dirname(out_fname)):
        os.makedirs(os.path.dirname(out_fname))

    with open(out_fname, 'w+', encoding='utf-8') as fout:
        html_content = template.render(data=data)
        fout.write(html_content)


def main():
    data = {}
    print("genning...")
    with open('conf/proxies.txt') as f:
        data['proxies'] = f.read()

    with open('conf/proxy-groups.txt') as f:
        data['proxy_groups'] = f.read()

    generate_html(data, os.path.join(OUT_DIR, "syaofox.yaml"))

    print("finished!")


if __name__ == "__main__":
    main()