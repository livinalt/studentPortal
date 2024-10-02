// This setup uses Hardhat Ignition to manage smart contract deployments.
// Learn more about it at https://hardhat.org/ignition

import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

const StudentPortalModule = buildModule("StudentPortalModule", (m) => {

  const studentPortal = m.contract("StudentPortal", []);

  return { studentPortal };
});

export default StudentPortalModule;
