clc; clear; close all;

% https://elifesciences.org/articles/49041

data = readtable("~/Downloads/elife-49041-fig2-data1-v2.xlsx");


%% Replicate 2B
figure;
hold on;

behavior_scores = [];
phenotype_groups = {};

for s = unique(data.Subject)'
    single_subject_table = data(data.Subject == s, :);

    if (single_subject_table.Phenotype{end} == 'GT')
        color = 'red';
        phenotype_groups{end+1} = "GT";
    else
        color = 'blue';
        phenotype_groups{end+1} = "ST";
    end
        plot(single_subject_table.PCA_Index, Color=color)
        behavior_scores = [behavior_scores; single_subject_table.PCA_Index'];

end
hold off;

phenotype_groups = cell2mat(phenotype_groups);

%% Save for students
% save("~/Downloads/campus19.mat", 'behavior_scores', 'phenotype_groups')

%% Replicate 2H
figure;
hold on;

gt_all = [];
st_all = [];

alpha = .3;

for s = unique(data.Subject)'
    single_subject_table = data(data.Subject == s, :);
    x = single_subject_table.Latency_Magazine;

    if (single_subject_table.Phenotype{end} == 'GT')
        color = [1 0 0 alpha];
        gt_all = [gt_all x];

    else
        color =  [0 0 1 alpha];
        st_all = [st_all x];

    end
    plot(x, Color=color)
end


plot(mean(gt_all,2,'omitmissing'), 'LineWidth', 3, 'Color', [1 0 0]);
plot(mean(st_all,2,'omitmissing'), 'LineWidth', 3, 'Color', [0 0 1]);


hold off;

%% Attempt to replicate 2I
% TODO: something seems off, though; there shouldn't be this much overlap

data.Phenotype = categorical(data.Phenotype);
data.Treatment = categorical(data.Treatment);
data.GPCR = categorical(data.GPCR);


% create grouping variable combining Phenotype and Treatment
comb = strcat(string(data.Treatment), "\_", string(data.GPCR));
data.PhenotypeTreatment = categorical(comb);


% plot violins for PCA_Index by the combined group
figure;
hold on;
violinplot(data(data.Phenotype == "GT", :), 'PhenotypeTreatment', 'PCA_Index');
violinplot(data(data.Phenotype == "ST", :), 'PhenotypeTreatment', 'PCA_Index');
hold off;

