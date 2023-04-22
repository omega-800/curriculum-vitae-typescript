interface CompConfig {
    component: {
        name: string,
        type: string,
        tag: string
    }
}

interface ViewCompConfig extends CompConfig {
    list?: ListCompConfig
    useState?: Function,
    state?: any
}

interface ListCompConfig extends CompConfig {
    items: ItemCompConfig[],
    filter?: FilterCompConfig,
    sort?: SortCompConfig,
    useState?: Function,
    state?: any
}

interface ItemCompConfig extends CompConfig {
    id: string,
    name: string,
    data: {[key:string]:any}
}

interface SkillCompConfig extends ItemCompConfig {
    data: {
        id: string,
        name: string,
        percent: number
    }
}

interface FilterCompConfig extends CompConfig {
    onChange: Function,
    filters: FilterItemConfig[]
}

interface FilterItemConfig extends ItemCompConfig {
    onChange: Function,
    selected: boolean
}

interface SortCompConfig extends CompConfig {

}
