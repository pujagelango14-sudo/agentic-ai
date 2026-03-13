## Example Integration
```python
from contract_monitoring_system import ContractMonitoringSystem

# 1. Initialize System and Database
system = ContractMonitoringSystem("my_corporate_contracts.db")

# 2. Ingest a New Contract
new_contract = system.ingest_contract({
    "name": "Cloud Hosting Agreement",
    "vendor": "CloudCorp",
    "client": "Our Company",
    "start_date": datetime.now(),
    "end_date": datetime.now() + timedelta(days=365),
    "value": 150000.00
})

# 3. Retrieve Fully Processed Dashboard State
dashboard_payload = system.get_dashboard_data()

# 4. Trigger Nightly System Cycle
daily_results = system.run_monitoring_cycle()
```
