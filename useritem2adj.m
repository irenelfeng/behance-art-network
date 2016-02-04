%user-item matrix to adjacency matrix 

function adj = useritem2adj(useritem)

edjlist = []
% iterate over columns, edges, filling in A
for c=1:size(useritem,2)
    pairs = find(useritem(:,c));
    if length(pairs) > 1
        edges = combntns(pairs,2)
        edjlist = vertcat(edjlist,edges)
    end
end

edjlist = horzcat(edjlist, ones(size(edjlist,1)))
adj = edgeL2adj(edjlist)
adj = symmetrize(adj)


    
    
    