function [w] = learn_perceptron(neg_examples_nobias,pos_examples_nobias,w_init,w_gen_feas)

% the perceptron algorithm


w = w_current;
num_neg_examples = size(neg_examples,1);
num_pos_examples = size(pos_examples,1);
for i=1:num_neg_examples
    this_case = neg_examples(i,:);
    x = this_case';
    activation = this_case*w;
    if (activation >= 0)
        w = w .- x;
    end
end
for i=1:num_pos_examples
    this_case = pos_examples(i,:);
    x = this_case';
    activation = this_case*w;
    if (activation < 0)
        w = w .+ x;
    end
end
