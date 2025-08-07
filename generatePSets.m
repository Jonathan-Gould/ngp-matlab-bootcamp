%% reset environment
clc; clear; close all;

%% refresh the output directory
outdir = [pwd filesep 'problem sets'];
if exist('Problem Sets', 'dir')
    rmdir(outdir, 's');
end
mkdir(outdir);

sourceDir = [pwd filesep 'Problem Set Source'];

%% clean and copy over the problem set .m files
files = dir([sourceDir filesep '*.m']);
for i = 1:numel(files)
    fileName = files(i).name;
    filePath = [sourceDir filesep files(i).name];
    oldText = fileread(filePath);

    newText = regexprep(oldText, '^% SOLUTION {.+?% SOLUTION }(\s)*?$', '', 'lineanchors');
    assert(mod(numel(strfind(oldText, 'SOLUTION')),2) == 0);
    % if (~numel(strfind(oldText, 'SOLUTION')) >= 2)
    %     disp("File %s didn't have any solutions.", fileName);
    % end
    assert(numel(strfind(newText, 'SOLUTION')) == 0);
    
    fileID = fopen([outdir filesep fileName], 'w+');
    fprintf(fileID, "%s", newText);
    fclose(fileID);
end

%% copy over the problem set data files

files = dir([sourceDir filesep '*.mat']);
for i = 1:numel(files)
    fileName = files(i).name;
    filePath = [sourceDir filesep files(i).name];
    copyfile(filePath, outdir);
end
