# <a name="title"></a> Kitchen::Machine

A Test Kitchen Driver with no hypervisor or cloud abstraction.

This driver is an extremely stripped down driver and assumes that an available machine is ready to accept SSH or WinRM connections.

## <a name="installation"></a> Installation and Setup

Please read the [Driver usage][driver_usage] page for more details.

## <a name="default-config"></a> Default Configuration

```yaml
---
driver:
  name: machine
  username: vagrant
  password: vagrant
  hostname: localhost
  port: 22 or 5985 depending on transport
```

## <a name="development"></a> Development

* Source hosted at [GitHub][repo]
* Report issues/questions/feature requests on [GitHub Issues][issues]

Pull requests are very welcome! Make sure your patches are well tested.
Ideally create a topic branch for every separate change you make. For
example:

1. Fork the repo
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## <a name="authors"></a> Authors

Created and maintained by [Matt Wrock][author] (<matt@mattwrock.com>)

## <a name="license"></a> License

Apache 2.0 (see [LICENSE][license])


[author]:           https://github.com/mwrock
[issues]:           https://github.com/mwrock/kitchen-machine/issues
[license]:          https://github.com/mwrock/kitchen-machine/blob/master/LICENSE
[repo]:             https://github.com/mwrock/kitchen-machine
[driver_usage]:     http://kitchen.ci/docs/getting-started/adding-platform
