
%clicks_hist = histogram(all.users, unique(all.users));
% obvious to clear 2 values then - 8347 times and 6874 times
tbl = tabulate(users);
counts = tbl(:,2);
fraction = tbl(:,3);
counts( counts == 0 ) = []; % drop zeros
fraction(fraction == 0) = [];
% counts = counts(counts ~= 6874); %drop outliers
% counts = counts(counts ~= 8347);
subplot(2,1,1);
histogram(counts);
set(gca, 'XScale', 'log');
set(gca, 'YScale', 'log');
set(gca,'XTickLabel',num2str(get(gca,'XTick').'));
xlabel('Number of clicks per user');
ylabel('Frequency');
title('Log-log histograms for users and images');

% histfit(counts, size(unique(counts),1), 'gp');

% subplot(2,1,2);
% probplot(counts);

% MAX = max(counts);
% STD = std(counts);
% MIN = min(counts);
% STEP = (MAX - MIN) / 1000;
% PDF = normpdf(MIN:STEP:MAX, mean(counts), STD);
% plot(MIN:STEP:MAX, PDF);

%do the same to images 
tbl = tabulate(images);
counts = tbl(:,2);
counts( counts == 0 ) = [];
% MAX = max(counts);
% STD = std(counts);
% MIN = min(counts);
% STEP = (MAX - MIN) / 1000;
% PDF = normpdf(MIN:STEP:MAX, mean(counts), STD);
% subplot(2,1,1);
% plot(MIN:STEP:MAX, PDF);
% set(gca,'XTickLabel',num2str(get(gca,'XTick').'));
subplot(2,1,2);
histogram(counts);
set(gca, 'XScale', 'log');
set(gca, 'YScale', 'log');
set(gca,'XTickLabel',num2str(get(gca,'XTick').'));
xlabel('Number of clicks per image');
ylabel('Frequency');
print(gcf, '-djpeg', 'histograms');
% nee_max = max(counts);
% counts = counts(counts ~= nee_max);
% subplot(2,1,2);
% probplot(counts);
% histfit(counts, size(unique(counts),1), 'gp');