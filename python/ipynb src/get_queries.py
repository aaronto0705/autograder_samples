import argparse, json

def get_inputs():
    parser = argparse.ArgumentParser()
    
    parser.add_argument("student_file", type=str)
    args = parser.parse_args()
    print (args.student_file)

    question_num = 0

    with open(args.student_file) as f:
        for line in f.readlines():
            info = json.loads(line)['cells']
            for l in info:
                if l['cell_type'] == 'code':
                    print(''.join(l['source']))
                    print()
        

get_inputs()