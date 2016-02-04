function dend = clustering(data)
    distances = pdist(data, 'cosine'); % if you don't have euclidean, use
    % you need a SIMILARITY MATRIX
    link = linkage(distances, 'average'); % or complete
    dend = dendrogram(link, 100);