using {capm.reuse.manager as capmreusemanager} from '../db/manager';

service ManagerService {
    entity Employee as projection on capmreusemanager.syn_EMPLOYEES;
    entity Company  as projection on capmreusemanager.syn_COMPANY;

}