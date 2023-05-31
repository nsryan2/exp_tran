:::mermaid
graph LR
A[Mine] -- Mine Tailings --> E
A -- Ore --> B[Mill]
B --> C[Fabrication]
B -- Mill Tailings --> E
C -- Fuel --> D[Reactor]
C -- Fab Tailings --> E
D -- Used Fuel and Wastes --> E[Repository]
:::

:::mermaid
stateDiagram-v2
Mine --> Mill
Mill --> Fabrication
Fabrication --> Reactor
Reactor --> Repository
:::

:::mermaid
gitGraph:
    branch Mine
    branch Mill
    branch Fabrication
    branch Reactor
    checkout Mine
    commit id:"Construction"
    branch Repository
    checkout Repository
    checkout Mine
    commit id:"Mine Tailings"
    checkout Repository
    merge Mine
    checkout Mine
    commit id:"ore"
    checkout Mill
    commit id:"fuel"
    merge Mine
    commit id:"Mill Tailings"
    checkout Fabrication
    commit id:"fuel"
    checkout Reactor
    commit id:"Core Life"
    merge Fabrication
    checkout Fabrication
    commit id:"Fabrication Tailings"
    checkout Repository
    commit id:"Storage"
    merge Mill
    merge Fabrication
:::

:::mermaid
graph TB
    sq[Square shape] --> ci((Circle shape))

    subgraph A
        od>Odd shape]-- Two line<br/>edge comment --> ro
        di{Diamond with <br/> line break} -.-> ro(Rounded<br>square<br>shape)
        di==>ro2(Rounded square shape)
    end

    %% Notice that no text in shape are added here instead that is appended further down
    e --> od3>Really long text with linebreak<br>in an Odd shape]

    %% Comments after double percent signs
    e((Inner / circle<br>and some odd <br>special characters)) --> f(,.?!+-*ز)

    cyr[Cyrillic]-->cyr2((Circle shape Начало));

     classDef green fill:#9f6,stroke:#333,stroke-width:2px;
     classDef orange fill:#f96,stroke:#333,stroke-width:4px;
     class sq,e green
     class di orange
:::