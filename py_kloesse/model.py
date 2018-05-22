def compute(fm, page_extent):

    """Imposition for 9 inches x 6 inches book trim size."""

    # Creates the full pagination of book based on the fm and page extent inputs.
    pagination = [i for j in ( range(1, fm+1),range(1, page_extent+1) ) for i in j]

    # Create the nested list for the two sides.
    imposition = [pagination[i:i+2] for i in range(0, len(pagination), 2)]

    # Creates the multi-column layout for the javascript and printout.
    layout = []
    for i, j in enumerate(imposition):
        if i % 2 != 0:
            layout.append(list(reversed(j))) # This does the reversal.
        else:
            layout.append(j)

    i = 16
    while i < len(layout):
        layout.insert(i, 'A')
        i += (i+1)
    
    return layout